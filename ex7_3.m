img = imread("imagens\face_noise.jpg");

favg3 = fspecial("average");
favg5 = fspecial("average", 5);

fgau = fspecial("gaussian", 5, 1);

img3 = imfilter(img, favg3);
img5 = imfilter(img, favg5);
imggau = imfilter(img, fgau);
imgmed = medfilt2(img);

figure;
% subplot(3, 2, 1:2); imshow(img); title("Original");
subplot(2, 2, 1); imshow(img3); title("Média 3x3");
subplot(2, 2, 2); imshow(img5); title("Média 5x5");
subplot(2, 2, 3); imshow(imggau); title("Gaussiano 5x5 σ=1");
subplot(2, 2, 4); imshow(imgmed); title("Mediana 3x3");
