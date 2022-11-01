% 5.1
I = imread("imagens\polen.tif");
img_eq = histeq(I);

figure;
subplot(2, 2, 1); imshow(I); title("Pólen");
subplot(2, 2, 2); imshow(img_eq); title("Equalizada");
subplot(2, 2, 3); imhist(I);
subplot(2, 2, 4); imhist(img_eq);
% 5.2
I = imread("imagens\babesia_1.jpg");
I2 = imread("imagens\babesia_2.jpg");
J = imhistmatch(I, I2);

figure;
subplot(2, 3, 1); imshow(I); title("Babesia 1");
subplot(2, 3, 2); imshow(I2); title("Babesia 2");
subplot(2, 3, 3); imshow(J); title("Match");
subplot(2, 3, 4); imhist(I);
subplot(2, 3, 5); imhist(I2);
subplot(2, 3, 6); imhist(J);
