img = imread("imagens\xadrez.tif");

img_neg = ~img;

figure();
subplot(1, 2, 1); imshow(img); title("xadrez.tif");
subplot(1, 2, 2); imshow(img_neg); title("Negativo");