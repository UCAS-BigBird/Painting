clear all;close all;clc
[~, ~, raw] = xlsread('C:\Users\UCAS_BigBird\Desktop\数据.xlsx','Sheet1');
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};

%% 将非数值元胞替换为 NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw); % 查找非数值元胞
raw(R) = {NaN}; % 替换非数值元胞

%% 创建输出变量
data = reshape([raw{:}],size(raw));

%% 将导入的数组分配给列变量名称
VarName1 = data(:,1);
VarName2 = data(:,2);
VarName3 = data(:,3);
VarName4 = data(:,4);
VarName5 = data(:,5);
VarName6 = data(:,6);
VarName7 = data(:,7);
VarName8 = data(:,8);
VarName9 = data(:,9);
VarName10 = data(:,10);

% [xData, yData] = prepareCurveData( VarName1, VarName2 );
% ft = fittype( 'smoothingspline' );
% [fitresult, ~] = fit( xData, yData, ft );
% [xData2, yData2] = prepareCurveData( VarName1, VarName3 );
% [fitresult2, ~] = fit( xData2, yData2, ft );
% 
% [xData3, yData3] = prepareCurveData( VarName1, VarName4 );
% [fitresult3, ~] = fit( xData3, yData3, ft );
% 
% [xData4, yData4] = prepareCurveData( VarName1, VarName5 );
% [fitresult4, ~] = fit( xData4, yData4, ft );
% 
% [xData5, yData5] = prepareCurveData( VarName1, VarName6 );
% [fitresult5, ~] = fit( xData5, yData5, ft );
% 
% [xData6, yData6] = prepareCurveData( VarName1, VarName7 );
% [fitresult6, ~] = fit( xData6, yData6, ft );
% 
% [xData7, yData7] = prepareCurveData( VarName1, VarName8);
% [fitresult7, ~] = fit( xData7, yData7, ft );
% 
% [xData8, yData8] = prepareCurveData( VarName1, VarName9 );
% [fitresult8, ~] = fit( xData8, yData8, ft );
% 
% [xData9, yData9] = prepareCurveData( VarName1, VarName10 );
% [fitresult9, ~] = fit( xData9, yData9, ft );
% 

figure;
plot(VarName1,VarName2,'k');
hold on
plot(VarName1,VarName3,'k');
hold on
plot(VarName1,VarName4,'k');
hold on
plot(VarName1,VarName5,'k');
hold on
plot(VarName1,VarName6,'k');
hold on
plot(VarName1,VarName7,'k');
hold on
plot(VarName1,VarName8,'k');
hold on
plot(VarName1,VarName9,'k');
hold on
plot(VarName1,VarName10,'k');
set(gca,'XTick',[0:0.2:2.8])
grid on
legend('L=0','L=2','L=4','L=6','L=10','L=15','L=20','L=25','L=30')
xlabel('Q/N')
ylabel('CN')















% [xData2, yData2] = prepareCurveData( VarName1, VarName3 );
% [fitresult2, ~] = fit( xData2, yData2, ft );
% plot( fitresult2);
% %第三条曲线
% hold on
% [xData3, yData3] = prepareCurveData( VarName1, VarName4 );
% %ft = fittype( 'smoothingspline' );
% [fitresult3, ~] = fit( xData3, yData3, ft );
% plot( fitresult3);
% %第四条曲线
% hold on
% [xData4, yData4] = prepareCurveData( VarName1, VarName5 );
% [fitresult4, ~] = fit( xData4, yData4, ft );
% % figure( 'Name', 'untitled fit 1' );
% plot( fitresult4 );
% hold on
% [xData, yData] = prepareCurveData( VarName1, VarName2 );
% ft = fittype( 'smoothingspline' );
% [fitresult, gof] = fit( xData, yData, ft );
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData );
% hold on
% [xData, yData] = prepareCurveData( VarName1, VarName2 );
% ft = fittype( 'smoothingspline' );
% [fitresult, gof] = fit( xData, yData, ft );
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData );
% hold on
% [xData, yData] = prepareCurveData( VarName1, VarName2 );
% ft = fittype( 'smoothingspline' );
% [fitresult, gof] = fit( xData, yData, ft );
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData );
% hold on
% [xData, yData] = prepareCurveData( VarName1, VarName2 );
% ft = fittype( 'smoothingspline' );
% [fitresult, gof] = fit( xData, yData, ft );
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData );
% hold on
% [xData, yData] = prepareCurveData( VarName1, VarName2 );
% ft = fittype( 'smoothingspline' );
% [fitresult, gof] = fit( xData, yData, ft );
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData );
% hold on
% [xData, yData] = prepareCurveData( VarName1, VarName2 );
% ft = fittype( 'smoothingspline' );
% [fitresult, gof] = fit( xData, yData, ft );
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData );



