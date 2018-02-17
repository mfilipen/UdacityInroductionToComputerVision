%%Matlab code 
%load an image
img=imread('moon.png');

n=3;
for i=0:n
    
    subplot(n+1,3,i*3+1);
    imshow(img);
    title('Original');
    
    
    %add salt and pepper noise
    d=0.1*(i+1);
    saltPepperImg = imnoise(img,'salt & pepper',d);
    subplot(n+1,3,i*3+2);
    imshow(saltPepperImg);
    title(['Salt & pepper. Noise density d = ',num2str(d),'.']);
    
    
    %apply median filter
    medianFilterNoisyImg = medfilt2(saltPepperImg);
    subplot(n+1,3,i*3+3);
    imshow(medianFilterNoisyImg);
    title('Median filter');
    
end