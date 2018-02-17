% Apply a Gaussian filter to remove noise
img = imread('saturn.png');
subplot(2,2,1);
imshow(img);
title('Original');

% Add noise to the image
sigmaNoise=0.01;
noiseImg=imnoise(img, 'gaussian', 0, sigmaNoise); 
subplot(2,2,2);
imshow(noiseImg);
title('Noisy image');

% Create Gaussian filter
hsize=30;
sigma=1;
h = fspecial('gaussian',hsize,sigma);
subplot(2,2,3);
imshow(h,[]);
title('Gaussian kernel');

%Apply Gaussian filter
smoothedImg = imfilter(img,h);
subplot(2,2,4);
imshow(smoothedImg);
title('Gaussian filter');