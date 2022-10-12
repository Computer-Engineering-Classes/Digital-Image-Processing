img1 = imread("imagens\dif1.bmp");
img2 = imread("imagens\dif2.bmp");

figure();
subplot(5, 5, 1); imshow(img1); title("dif1.bmp");

k1 = 1;
k2 = 0;

for i = 1 : 23
    img_comb = imlincomb(k1, img1, k2, img2);
    subplot(5, 5, i + 1); imshow(img_comb); title("It. " + num2str(i));
    k1 = k1 - 1 / 23;
    k2 = k2 + 1 / 23;
end

subplot(5, 5, 25); imshow(img2); title("dif2.bmp");