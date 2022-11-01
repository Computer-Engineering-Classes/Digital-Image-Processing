% 2.1
I = imread("imagens\rx_mao.jpg");
ndc = I(180, 70);
I(180, 70) = 20;

figure(1); imshow(I);
% 2.2
I = imread("imagens\rx_mao.jpg");
I(10:30, 10:30) = 100;

figure(2); imshow(I);
% 2.3
I = imread("imagens\irina.jpg");
I2 = imread("imagens\cristiano.jpg");
I3 = [I, I2];

figure(3); imshow(I3);
% 2.4
I = imread("imagens\Rx_bexiga.jpg");
I_crop = imcrop(I, [72, 70, 90, 80]);

figure(4); imshow(I_crop);
% 2.5
I = imread("imagens\rx_mao.jpg");
I_rs = imresize(I, 2);

figure(5); imshow(I_rs);
% 2.6
I = imread("imagens\brain.jpg");
I_rt = imrotate(I, 180);

figure(6); imshow(I_rt);
