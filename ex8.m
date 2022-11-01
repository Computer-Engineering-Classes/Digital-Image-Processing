% 8.1
I = zeros(4, 7);
I(:, 3) = 0.2;
I(:, 4) = 0.5;
I(:, 5) = 0.8;
I(:, 6:7) = 1;
h = [-1, 0, 1];
I_w = imfilter(I, h);

subplot(1, 2, 1); imshow(I);
subplot(1, 2, 2); imshow(I_w);
% 8.2
I = imread("imagens\xadrezado.jpg");
I = im2double(I);
w1 = [-2 0 2];
w2 = w1.';
I_1 = imfilter(I, w1);
I_2 = imfilter(I, w2);
I_edges = imadd(I_1, I_2);

figure;
subplot(2, 2, 1); imshow(I); title("Original");
subplot(2, 2, 2); imshow(I_1, []); title("Máscara vertical");
subplot(2, 2, 3); imshow(I_2, []); title("Máscara horizontal");
subplot(2, 2, 4); imshow(I_edges, []); title("Edges");
% 8.3
aux_ex8("prewitt");
% 8.4
aux_ex8("sobel");
% 8.5
I = imread("imagens\pulmao.jpg");
I = im2double(I);
h = fspecial("log");
I_h = imfilter(I, h);
I_zc = edge(I, "zerocross");

figure;
subplot(1, 3, 1); imshow(I); title("Original");
subplot(1, 3, 2); imshow(I_h, []); title("LoG");
subplot(1, 3, 3); imshow(I_zc, []); title("Zero crossing");
