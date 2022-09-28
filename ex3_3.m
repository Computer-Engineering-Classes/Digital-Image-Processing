img1 = imread("imagens\dif1.bmp");
img2 = imread("imagens\dif2.bmp");

img_dif = imabsdiff(img1, img2);

figure();
subplot(1, 3, 1); imshow(img1); title("dif1.bmp");
subplot(1, 3, 2); imshow(img2); title("dif2.bmp");
subplot(1, 3, 3); imshow(img_dif); title("Diferença absoluta");