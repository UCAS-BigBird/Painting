function [fitresult, gof] = createFit(VarName1, VarName3)
%CREATEFIT(VARNAME1,VARNAME3)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : VarName1
%      Y Output: VarName3
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 12-Aug-2019 20:51:32 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( VarName1, VarName3 );

% Set up fittype and options.
ft = fittype( 'smoothingspline' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'VarName3 vs. VarName1', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel VarName1
ylabel VarName3
grid on


