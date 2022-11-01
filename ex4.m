% 4.1
paths = ["imagens\fce_clara.bmp", "imagens\fce_escura.bmp"];
titles = ["Clara", "Escura"];

figure;
for i = 1 : 2
    I = imread(paths(i));
    ttl = titles(i);
    subplot(2, 3, 3 * i - 2);  imshow(I); title(ttl);
    [~, nbins] = imhist(I);
    subplot(2, 3, 3 * i - 1); imhist(I); title("Histograma");
    subplot(2, 3, 3 * i); histogram(I, nbins, 'Normalization','pdf'); 
    title("Histograma normalizado");
    fprintf("Face %s:\n", ttl);
    fprintf("Intensidade média: %f\n", mean2(I));
    fprintf("Desvio padrão: %f\n", std2(I));
end
% 4.2
I = imread("imagens\vertebra.jpg");
[counts, ~] = imhist(I);
[M, i] = max(counts);
fprintf("\nNDC mais frequente: %d\nFrequência: %d\n", i, M);

figure;
subplot(2, 2, 1:2); imshow(I); title("Vértebra");
subplot(2, 2, 3); imhist(I); title("Histograma");
subplot(2, 2, 4); imhist(I, 25); title("Histograma com 25 classes");
% 4.3
I = imread("imagens\retina.tif");
[R, G, B] = imsplit(I);
[y_red, x] = imhist(R);
[y_green, ~] = imhist(G);
[y_blue, ~] = imhist(B);

figure;
subplot(1, 3, 1);  imshow(R); title("Banda R");
subplot(1, 3, 2); imshow(G); title("Banda G");
subplot(1, 3, 3); imshow(B); title("Banda B");

figure;
plot(x, y_red, "Red", x, y_green, "Green", x, y_blue, "Blue");
legend("Red", "Green", "Blue");
