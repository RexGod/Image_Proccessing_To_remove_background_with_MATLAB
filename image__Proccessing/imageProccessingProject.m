clear;
clc;
%read image 1
image1 = imread('F:\university\Matlab\image__Proccessing\jpg\porpel.jpg');
image1 = imresize(image1,[1080,1650]);
hsvImage1 = rgb2hsv(image1);
% Extract the color, saturation, and value channels
hueChannel1 = hsvImage1(:, :, 1);
saturationChannel1 = hsvImage1(:, :, 2);
valueChannel1 = hsvImage1(:, :, 3);
%read image 2
image2 = imread('F:\university\Matlab\image__Proccessing\jpg\light-porpel.jpg');
image2 = imresize(image2,[1080,1650]);
hsvImage2 = rgb2hsv(image2);
% Extract the color, saturation, and value channels
hueChannel2 = hsvImage2(:, :, 1);
saturationChannel2 = hsvImage2(:, :, 2);
valueChannel2 = hsvImage2(:, :, 3);
%read image 3
image3 = imread('F:\university\Matlab\image__Proccessing\jpg\pink.jpg');
image3 = imresize(image3,[1080,1650]);
hsvImage3 = rgb2hsv(image3);
% Extract the color, saturation, and value channels
hueChannel3 = hsvImage3(:, :, 1);
saturationChannel3 = hsvImage3(:, :, 2);
valueChannel3 = hsvImage3(:, :, 3);
%read image 4
image4 = imread('F:\university\Matlab\image__Proccessing\jpg\light-blue.jpg');
image4 = imresize(image4,[1080,1650]);
hsvImage4 = rgb2hsv(image4);
% Extract the color, saturation, and value channels
hueChannel4 = hsvImage4(:, :, 1);
saturationChannel4 = hsvImage4(:, :, 2);
valueChannel4 = hsvImage4(:, :, 3);
%----------------------------------------
% Define the range of purple color in HSV for image 1
purpleHueRange = [0.6, 0.9];
% Define the range of light-purple color in HSV for image 2
lightpurpleHueRange = [0.5, 0.8];
% Define the range of pink color in HSV for image 3
pinkHueRange = [0.85,0.99];
% Define the range of light-blue color in HSV for image 4
lightblueHueRange = [0.4, 0.7];
%----------------------------------------
% Create a mask by thresholding the hue channel for purple color
purpleMask = (hueChannel1 >= purpleHueRange(1)) & (hueChannel1 <= purpleHueRange(2));
% Create a mask by thresholding the hue channel for light-purple color
lightpurpleMask = (hueChannel2 >= lightpurpleHueRange(1)) & (hueChannel2 <= lightpurpleHueRange(2));
% Create a mask by thresholding the hue channel for pink color
pinkMask = (hueChannel3 >= pinkHueRange(1)) & (hueChannel3 <= pinkHueRange(2));
% Create a mask by thresholding the hue channel for light-blue color
lightblueMask = (hueChannel4 >= lightblueHueRange(1)) & (hueChannel4 <= lightblueHueRange(2));
%----------------------------------------
% Apply the mask to the saturation and value channels
purpleSaturation = saturationChannel1 .* purpleMask;
purpleValue = valueChannel1 .* purpleMask;
% Apply the mask to the saturation and value channels
lightpurpleSaturation = saturationChannel2 .* lightpurpleMask;
lightpurpleValue = valueChannel2 .* lightpurpleMask;
% Apply the mask to the saturation and value channels
pinkSaturation = saturationChannel3 .* pinkMask;
pinkValue = valueChannel3 .* pinkMask;
% Apply the mask to the saturation and value channels
lightblueSaturation = saturationChannel4 .* lightblueMask;
lightblueValue = valueChannel4 .* lightblueMask;
%----------------------------------------
% Convert the modified HSV channels back to RGB
modifiedHsvImage1 = cat(3, hueChannel1, purpleSaturation, purpleValue);
separatedImage1 = hsv2rgb(modifiedHsvImage1);
% Convert the modified HSV channels back to RGB
modifiedHsvImage2 = cat(3, hueChannel2, lightpurpleSaturation, lightpurpleValue);
separatedImage2 = hsv2rgb(modifiedHsvImage2);
% Convert the modified HSV channels back to RGB
modifiedHsvImage3 = cat(3, hueChannel3, pinkSaturation, pinkValue);
separatedImage3 = hsv2rgb(modifiedHsvImage3);
% Convert the modified HSV channels back to RGB
modifiedHsvImage4 = cat(3, hueChannel4, lightblueSaturation, lightblueValue);
separatedImage4 = hsv2rgb(modifiedHsvImage4);
%----------------------------------------
% Display the original and separated image 1
subplot(4, 3, 1);
image1 = im2double(image1);
imshow(image1);
title('Original Image');
subplot(4, 3, 2);
separatedImage1 = im2double(separatedImage1);
imshow(separatedImage1);
title('Separated Purple Color');
subimage = image1 - separatedImage1;
subplot(4, 3,3);
imshow(subimage);
title('just face');

% Display the original and separated image 2
subplot(4, 3, 4);
image2 = im2double(image2);
imshow(image2);
title('Original Image');
subplot(4, 3, 5);
separatedImage2 = im2double(separatedImage2);
imshow(separatedImage2);
title('Separated Light-Purple Color');
subimage2 = image2 - separatedImage2;
subplot(4, 3,6);
imshow(subimage2);
title('just face');

% Display the original and separated image 3
subplot(4, 3, 7);
image3 = im2double(image3);
imshow(image3);
title('Original Image');
subplot(4, 3, 8);
separatedImage3 = im2double(separatedImage3);
imshow(separatedImage3);
title('Separated Pink Color');
subimage = image3 - separatedImage3;
subplot(4, 3,9);
imshow(subimage);
title('just face');

% Display the original and separated image 4
subplot(4, 3, 10);
image4 = im2double(image4);
imshow(image4);
title('Original Image');
subplot(4, 3, 11);
separatedImage4 = im2double(separatedImage4);
imshow(separatedImage4);
title('Separated Light-Blue Color');
subimage4 = image4 - separatedImage4;
subplot(4, 3,12);
imshow(subimage4);
title('just face');
