%% ������ӱ���е�����
% ���ڴ����µ��ӱ�������ݵĽű�:
%
%    ������: C:\Users\UCAS_BigBird\Desktop\help-liu\����.xlsx
%    ������: Sheet1
%
% Ҫ��չ�����Թ�����ѡ�����ݻ��������ӱ��ʹ�ã������ɺ���������ű���

% �� MATLAB �Զ������� 2019/08/13 10:46:47

%% ��������
data = xlsread('C:\Users\UCAS_BigBird\Desktop\help-liu\����.xlsx','Sheet1');

%% ����������������б�������
x = data(:,1);
A = data(:,2);
B = data(:,3);
C = data(:,4);

%% �����ʱ����
clearvars data raw;
xx=0:0.025:1;
y1=interp1(x,A,xx,'spline');
y2=interp1(x,B,xx,'spline');
y3=interp1(x,C,xx,'spline');

figure
A=plot(xx,y1,xx,y2,xx,y3,'color','k');

% hold on
% plot('color','k')
% hold on
% plot('color','k')
hold on
B=plot([0,0.2,1.0],[0,0.3,1.5],'--k','linewidth',1.5);
hold on
C=plot([0,0.2,1.0],[0,0.1,0.5],'-.k','linewidth',1.5);
legend([A(1),B,C],'Grating line','Light line','Beam line');
%[x,y]=ginput(1);
hold on
plot(0.7688,0.3782,'ko','MarkerFaceColor','k','MarkerSize',10);
xlabel('kD/2\pi')
ylabel('Frequency(THz)')