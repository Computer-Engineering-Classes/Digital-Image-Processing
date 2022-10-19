I = imread("imagens\moon.tif");

I_sharp = imsharpen(I);

figure;
subplot(1, 2, 1); imshow(I); title("Original");
subplot(1, 2, 2); imshow(I_sharp); title("Sharpened");