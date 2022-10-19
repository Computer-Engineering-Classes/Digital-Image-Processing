I = imread("imagens\moon.tif");

flap = fspecial("laplacian");

ILP = imfilter(I, flap);

IHP = I - ILP;

figure;
subplot(1, 3, 1); imshow(I); title("Original");
subplot(1, 3, 2); imshow(ILP, []); title("Laplaciano");
subplot(1, 3, 3); imshow(IHP); title("Subtraída");