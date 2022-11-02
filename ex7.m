% 7.1
I = imread("imagens\face.jpg");
h3 = fspecial("average");
h7 = fspecial("average", 7);
I3 = imfilter(I, h3);
I7 = imfilter(I, h7);

figure;
subplot(1, 3, 1); imshow(I); title("Original");
subplot(1, 3, 2); imshow(I3); title("Média 3x3");
subplot(1, 3, 3); imshow(I7); title("Média 7x7");
% 7.2
I = imread("imagens\face.jpg");
h = fspecial("gaussian", 5, 1);
I_g = imfilter(I, h);

figure;
subplot(1, 2, 1); imshow(I); title("Original");
subplot(1, 2, 2); imshow(I_g); title("Gaussiano 5x5 σ=1");
% 7.3
I = imread("imagens\face_noise.jpg");
h3 = fspecial("average");
h5 = fspecial("average", 5);
hg = fspecial("gaussian", 5, 1);
I3 = imfilter(I, h3);
I5 = imfilter(I, h5);
I_g = imfilter(I, hg);
I_med = medfilt2(I);

figure; imshow(I); title("Original"); figure;
subplot(2, 2, 1); imshow(I3); title("Média 3x3");
subplot(2, 2, 2); imshow(I5); title("Média 5x5");
subplot(2, 2, 3); imshow(I_g); title("Gaussiano 5x5 σ=1");
subplot(2, 2, 4); imshow(I_med); title("Mediana 3x3");
% 7.4
I = imread("imagens\retina.jpg");
I1 = im2double(I);
h = fspecial("average", 27);
ILP = imfilter(I1, h);
IHP = I1 - ILP;
I_unsharp = I1 + 5 * IHP;

figure;
subplot(2, 2, 1); imshow(I); title("Original");
subplot(2, 2, 2); imshow(ILP); title("Smoothed");
subplot(2, 2, 3); imshow(IHP, []); title("Subtracted");
subplot(2, 2, 4); imshow(I_unsharp); title("Sharpened");
% 7.5
I = imread("imagens\moon.tif");
I_sharp = imsharpen(I);

figure;
subplot(1, 2, 1); imshow(I); title("Original");
subplot(1, 2, 2); imshow(I_sharp); title("Sharpened");
% 7.6
I = imread("imagens\moon.tif");
h = fspecial("laplacian");
ILP = imfilter(I, h);
IHP = I - ILP;

figure;
subplot(1, 3, 1); imshow(I); title("Original");
subplot(1, 3, 2); imshow(ILP, []); title("Laplacian");
subplot(1, 3, 3); imshow(IHP); title("Subtracted");
