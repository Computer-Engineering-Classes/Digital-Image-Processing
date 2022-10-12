img = imread("imagens\mamograma.tif");

img_neg = imcomplement(img);

figure;
subplot(1, 2, 1); imshow(img); title("Mamograma");
subplot(1, 2, 2); imshow(img_neg); title("Complemento");