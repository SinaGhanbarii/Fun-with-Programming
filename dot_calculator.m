clc,clf, close, clear 
image = imread('Sample.jpg');

yellowMask = (image(:,:,1) > 150) & (image(:,:,2) > 150) & (image(:,:,3) < 100);

[~, numYellowDots] = bwlabel(yellowMask);

% Display the number of yellow dots
fprintf('The number of yellow dots is: %d\n', numYellowDots);


% Estimation of the numbers
cells = 9*9;
dot_avg = 70;       % Average number of yellow dots in each cell
yellowMask_Estimate = dot_avg*cells;
fprintf('The estimated number of yellow dots is: %d\n', yellowMask_Estimate);

% Relative Error Calculation
err = ((numYellowDots - yellowMask_Estimate)/numYellowDots)*100;
fprintf('The relative error in percent is: %d\n', err);

