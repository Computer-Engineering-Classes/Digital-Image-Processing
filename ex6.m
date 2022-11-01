% 6.1
I = imread("imagens\mamograma.tif");
I_neg = imcomplement(I);

figure;
subplot(1, 2, 1); imshow(I); title("Mamograma");
subplot(1, 2, 2); imshow(I_neg); title("Complemento");
% 6.2
I = imread("imagens\polen.tif");
x = double(max(I, [], "all"));
y = double(min(I, [], "all"));
I2 = imadjust(I, [y / 255, x / 255], [0, 1], 0.2);
I3 = imadjust(I, [y / 255, x / 255], [0, 1], 0.4);
I4 = imadjust(I, [y / 255, x / 255], [0, 1], 0.6);

figure;
subplot(2, 4, 1); imshow(I); title("Original");
subplot(2, 4, 2); imshow(I2); title("Gamma - 0.2");
subplot(2, 4, 3); imshow(I3); title("Gamma - 0.4");
subplot(2, 4, 4); imshow(I4); title("Gamma - 0.6");
subplot(2, 4, 5); imhist(I);
subplot(2, 4, 6); imhist(I2);
subplot(2, 4, 7); imhist(I3);
subplot(2, 4, 8); imhist(I4);
% 6.3
I = imread("imagens\rx_torax.jpg");
I2 = imread("imagens\rx_torax2.jpg");
I_t = imadjust(I, [], [0, 1]);
I2_t = imadjust(I2, [], [0, 1]);

figure;
subplot(2, 2, 1); imshow(I); title("RX Tórax");
subplot(2, 2, 2); imshow(I_t); title("RX Tórax - Nítida");
subplot(2, 2, 3); imshow(I2); title("RX Tórax 2");
subplot(2, 2, 4); imshow(I2_t); title("RX Tórax 2 - Nítida");
