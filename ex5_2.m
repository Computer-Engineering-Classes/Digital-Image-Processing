img1 = imread("imagens\babesia_1.jpg");
img2 = imread("imagens\babesia_2.jpg");

J = imhistmatch(img1, img2);

figure();
subplot(2, 3, 1); imshow(img1); title("Babesia 1");
subplot(2, 3, 2); imshow(img2); title("Babesia 2");
subplot(2, 3, 3); imshow(J); title("Match");
subplot(2, 3, 4); imhist(img1);
subplot(2, 3, 5); imhist(img2);
subplot(2, 3, 6); imhist(J);