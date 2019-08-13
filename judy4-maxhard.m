%% 导入电子表格中的数据
% 用于从以下电子表格导入数据的脚本:
%
%    工作簿: C:\Users\UCAS_BigBird\Desktop\help-liu\reflect.xlsx
%    工作表: Sheet1
%
% 要扩展代码以供其他选定数据或其他电子表格使用，请生成函数来代替脚本。

% 由 MATLAB 自动生成于 2019/08/13 16:15:52

%% 导入数据
clear all;close all;clc
[~, ~, raw] = xlsread('C:\Users\UCAS_BigBird\Desktop\help-liu\reflect.xlsx','Sheet1');
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};

%% 将非数值元胞替换为 NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw); % 查找非数值元胞
raw(R) = {NaN}; % 替换非数值元胞

%% 创建输出变量
data = reshape([raw{:}],size(raw));

%% 将导入的数组分配给列变量名称
x1 = data(:,1);
y1 = data(:,2);
x2 = data(:,3);
y2 = data(:,4);
x3 = data(:,5);
y3 = data(:,6);
x4 = data(:,7);
y4 = data(:,8);
x5 = data(:,9);
y5 = data(:,10);
x6 = data(:,11);
y6 = data(:,12);
x7 = data(:,13);
y7 = data(:,14);

x1 = x1( ~ isnan(x1));   
y1 = y1( ~ isnan(y1));  

x2 = x2( ~ isnan(x2));   
y2 = y2( ~ isnan(y2));  

x3 = x3( ~ isnan(x3));   
y3 = y3( ~ isnan(y3));  

x5 = x5( ~ isnan(x5));   
y5 = y5( ~ isnan(y5));  

x6 = x6( ~ isnan(x6));   
y6 = y6( ~ isnan(y6));  

x7 = x7( ~ isnan(x7));   
y7 = y7( ~ isnan(y7));  
%% 清除临时变量
clearvars data raw R;

xx1=0.34:0.001:0.43;
yy1=interp1(x1,y1,xx1,'spline');
plot(xx1,yy1,'k');
hold on
xx2=0.33:0.001:0.45;
yy2=interp1(x2,y2,xx2,'spline');
plot(xx2,yy2,'k');
hold on
xx3=0.32:0.001:0.45;
yy3=interp1(x3,y3,xx3,'spline');
plot(xx3,yy3,'k');
hold on
xx4=0.32:0.001:0.5;
yy4=interp1(x4,y4,xx4,'spline');
plot(xx4,yy4,'k');
hold on
xx5=0.32:0.001:0.5;
yy5=interp1(x5,y5,xx5,'spline');
plot(xx5,yy5,'k');
hold on
xx6=0.32:0.001:0.48;
yy6=interp1(x6,y6,xx6,'spline');
plot(xx6,yy6,'k');
hold on
xx7=0.32:0.001:0.48;
yy7=interp1(x7,y7,xx7,'spline');
plot(xx7,yy7,'k');

