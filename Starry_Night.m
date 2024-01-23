clear,clc
% Load the image of Starry Night.
img = imread("C:\Users\Sina\Desktop\starry_night.jpg"); % Replace with the actual path to your image

% % Convert the image to grayscale
% grayscale_img = rgb2gray(img);
% 
% % Create a heatmap using the grayscale values
% colormap_custom = [0, 0, 0; 0, 0, 1; 0.5, 0, 0.5; 0, 0, 0.5; 0, 0, 0];
% heatmap = imagesc(grayscale_img);
% colormap(colormap_custom);
% 
% % Add a colorbar legend
% colorbar('Ticks', [0, 50, 100, 150, 200], 'TickLabels', {'0', '50', '100', '150', '200'});
% ylabel('Intensity');
% 
% % Add title
% title('Starry Night - Van Gogh Heatmap');
% 
% % Display the plot
% axis off; % Turn off axis labels and ticks
% axis image; % Maintain the aspect ratio

% Extract the red channel
red_channel = img(:,:,1);

% Create a heatmap using the red channel matrice
colormap_custom = jet; 
heatmap = imagesc(red_channel);

% Add a colorbar legend
colorbar;

% Add title
title('Starry Night - Van Gogh Heatmap');

% Display the plot
axis off; % Turn off axis labels and ticks
axis image; % Maintain the aspect ratio
