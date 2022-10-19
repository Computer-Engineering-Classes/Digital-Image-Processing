I = imread("imagens\retina.jpg");
I1 = im2double(I);

figure;
subplot(2, 2, 1); imshow(I); title("Original");

f27 = fspecial("average", 27);

ILP = imfilter(I1, f27);
subplot(2, 2, 2); imshow(ILP); title("Smoothed");

IHP = I1 - ILP;
subplot(2, 2, 3); imshow(IHP, []); title("Subtracted");

I_unsharp = I1 + 5 * IHP;
subplot(2, 2, 4); imshow(I_unsharp); title("Sharpened");