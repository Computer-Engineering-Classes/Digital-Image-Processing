img1 = imread("imagens\dif1.bmp");
img2 = imread("imagens\dif2.bmp");

img_dif = imabsdiff(img1, img2);
mouse = img_dif > img1;

figure();
subplot(2, 2, 1); imshow(img1); title("dif1.bmp");
subplot(2, 2, 2); imshow(img2); title("dif2.bmp");
subplot(2, 2, 3); imshow(img_dif); title("Diferença absoluta");
subplot(2, 2, 4); imshow(mouse); title("Rato");