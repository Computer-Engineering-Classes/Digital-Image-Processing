img1 = imread("imagens\And1.bmp");
img2 = imread("imagens\and2.bmp");

img_and = img1 | img2;

figure();
subplot(1, 3, 1); imshow(img1); title("And1.bmp");
subplot(1, 3, 2); imshow(img2); title("And2.bmp");
subplot(1, 3, 3); imshow(img_and); title("OR");