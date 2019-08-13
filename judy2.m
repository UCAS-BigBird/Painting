%% 导入电子表格中的数据
% 用于从以下电子表格导入数据的脚本:
%
%    工作簿: C:\Users\UCAS_BigBird\Desktop\help-liu\数据.xlsx
%    工作表: Sheet1
%
% 要扩展代码以供其他选定数据或其他电子表格使用，请生成函数来代替脚本。

% 由 MATLAB 自动生成于 2019/08/13 10:46:47

%% 导入数据
data = xlsread('C:\Users\UCAS_BigBird\Desktop\help-liu\数据.xlsx','Sheet1');

%% 将导入的数组分配给列变量名称
x = data(:,1);
A = data(:,2);
B = data(:,3);
C = data(:,4);

%% 清除临时变量
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