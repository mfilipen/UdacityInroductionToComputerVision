% Generate Gaussian noise
noise = randn([500 500])*0.5;
[n x] = hist(noise, linspace(-3, 3, 51));
%disp([x; n]);
%plot(x, n);
%imshow(noise);
%imshow(noise, []);
%bar(x, n);