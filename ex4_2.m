img = imread("imagens\vertebra.jpg");

[counts, ~] = imhist(img);

[M, i] = max(counts);
fprintf("\nNDC mais frequente: %d\nFrequência: %d\n", i, M);

figure();
subplot(2, 2, 1:2); imshow(img); title("Vértebra");
subplot(2, 2, 3); imhist(img); title("Histograma");
subplot(2, 2, 4); imhist(img, 25); title("Histograma com 25 classes");