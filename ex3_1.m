img = imread("imagens\mamograma.tif");
img_50 = imadd(img, 50);
img_150 = imadd(img, 150);

figure(); 
subplot(1, 3, 1); imshow(img); title("Original");
subplot(1, 3, 2); imshow(img_50); title("+50");
subplot(1, 3, 3); imshow(img_150); title("+150");