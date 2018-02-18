%% Matlab code
% load img
frizzy = imread('frizzy.png');

subplot(3,2,1);
imshow(frizzy);
title('frizzy');

% Take first channel
doubleFrizzy=double(frizzy(:,:,1))/255.;
subplot(3,2,2);
imshow(doubleFrizzy);
title('r channel');

% Compute x, y gradients
[gx gy] = imgradientxy(doubleFrizzy, 'sobel'); % Note: gx, gy are not normalized
subplot(3,2,3);
imshow((gx+4)/8);
title('gx with sobel kernel');

subplot(3,2,4);
imshow((gy+4)/8);
title('gy with sobel kernel');

% Obtain gradient magnitude and direction
[gmag gdir] = imgradient(gx, gy);
subplot(3,2,5);
imshow(gmag / (4 * sqrt(2))); % mag = sqrt(gx^2 + gy^2), so [0, (4 * sqrt(2))]
title('Gradient magnitude');

subplot(3,2,6);
imshow((gdir + 180.0) / 360.0); % angle in degrees [-180, 180]
title('Gradient direction');