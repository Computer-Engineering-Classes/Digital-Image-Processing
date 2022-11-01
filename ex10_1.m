close all; clear

I = imread("imagens\bolas.jpg");
figure(1); subplot(1, 2, 1); imshow(I);

figure(2); imhist(I);

I_bin = imbinarize(I, 110/255);
figure(1); subplot(1, 2, 2); imshow(I_bin);