retina = imread("imagens\retina.tif");

[R, G, B] = imsplit(retina);

[y_red, x] = imhist(R);
[y_green, ~] = imhist(G);
[y_blue, ~] = imhist(B);

figure(1);
subplot(1, 3, 1);  imshow(R); title("Banda R");
subplot(1, 3, 2); imshow(G); title("Banda G");
subplot(1, 3, 3); imshow(B); title("Banda B");

figure(2);
plot(x, y_red, "Red", x, y_green, "Green", x, y_blue, "Blue");
legend("Red", "Green", "Blue");