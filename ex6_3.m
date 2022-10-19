img1 = imread("imagens\rx_torax.jpg");
img2 = imread("imagens\rx_torax2.jpg");

img1_t = imadjust(img1, [], [0, 1]);
img2_t = imadjust(img2, [], [0, 1]);

figure();

subplot(2, 2, 1); imshow(img1); title("RX Tórax");
subplot(2, 2, 2); imshow(img1_t); title("RX Tórax - Nítida");
subplot(2, 2, 3); imshow(img2); title("RX Tórax 2");
subplot(2, 2, 4); imshow(img2_t); title("RX Tórax 2 - Nítida");