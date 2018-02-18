% Matlab code
% load img
frizzy = imread('frizzy.png');
froomer = imread('froomer.png');

subplot(4,2,1);
imshow(frizzy);
title('frizzy');

subplot(4,2,2);
imshow(froomer);
title('froomer')

% Convert to grayScale
frizzy=rgb2gray(frizzy);
subplot(4,2,3);
imshow(frizzy);
title('frizzy grayscale')


froomer=rgb2gray(froomer);
subplot(4,2,4);
imshow(froomer);
title('froomer grayscale')

% Canny edge detector
subplot(4,2,5);
frizzyEdges = edge(frizzy,'Canny');
imshow(imgaussfilt(double(frizzyEdges),1));
title('Edges of frizzy');

subplot(4,2,6);
froomerEdges = edge(froomer,'Canny');
imshow(imgaussfilt(double(froomerEdges),1));
title('Edges of froomer');

% Find common
subplot(4,2,[7,8]);
secretCode=frizzyEdges .* froomerEdges;
imshow(imgaussfilt(secretCode,1));
title('Secret Code');