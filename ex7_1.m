img = imread("imagens\face.jpg");

f3 = fspecial("average");
f7 = fspecial("average", 7);

img3 = imfilter(img, f3);
img7 = imfilter(img, f7);

figure;
subplot(1, 3, 1); imshow(img); title("Original");
subplot(1, 3, 2); imshow(img3); title("Média 3x3");
subplot(1, 3, 3); imshow(img7); title("Média 7x7");