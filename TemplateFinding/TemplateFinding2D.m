% Find template 2D

% Load image
tablet = imread('tablet.png');

% Print original
subplot(2,2,1);
imshow(tablet);
title('Original');

% Create and print template
glyph = tablet(75:165, 150:185);
subplot(2,2,2);
imshow(glyph);
title('Template');

% Find template
[y x] = find_template_2D(glyph, tablet);
disp([y x]); % should be the top-left corner of template in tablet

% Detect template
subplot(2,2,4);
imshow(tablet);
title('Detected template');
[h w] = size(glyph);
rectangle('Position',[x y w h],'EdgeColor','r');


function [yIndex xIndex] = find_template_2D(template, img)
    
    correlationMap = normxcorr2(template,img);
    
    subplot(2,2,3);
    surf(correlationMap), shading flat;
    title('Correlation map');
    
    [maxValue index] = max(correlationMap(:));
    [I_row, I_col] = ind2sub(size(correlationMap),index);
    yIndex=I_row-size(template,1)+1;
    xIndex=I_col-size(template,2)+1;
end