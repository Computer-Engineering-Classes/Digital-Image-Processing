% 12.1
clc, clear, close all
I = imread("imagens\Texto_partido.tif");
SE = strel("arbitrary", [0 1 0; 1 1 1; 0 1 0]);
B = imdilate(I, SE);

figure;
subplot(1, 2, 1); imshow(I); title("Original");
subplot(1, 2, 2); imshow(B); title("Dilated with cross");
% 12.2
clc, clear, close all
I = imread("imagens\wire_bond.tif");

figure;
subplot(2, 2, 1); imshow(I); title("Original");

radii = [5, 10, 20];
for i = 1:3
    r = radii(i);
    SE = strel("disk", r);
    B = imerode(I, SE);
    subplot(2, 2, i + 1); imshow(B);
    title("Eroded with disk, r=" + int2str(r));
end
% 12.3 e 12.4
clc, clear, close all
I = imread("imagens\shape.tif");
SE = strel('square', 20);
Bo = imopen(I, SE);
Bc = imclose(I, SE);
B = imclose(Bo, SE);

figure;
subplot(2, 2, 1); imshow(I); title("Original");
subplot(2, 2, 2); imshow(Bo); title("Opened");
subplot(2, 2, 3); imshow(Bc); title("Closed");
subplot(2, 2, 4); imshow(B); title("Opened + Closed");
% 12.5
clc, clear, close all
figure;
SE1 = [0, 0, 0
       0, 1, 1
       0, 1, 1];
SE2 = [1, 1, 1
       1, 0, 0
       1, 0, 0];
bw2 = bwhitmiss(B, SE1, SE2);
imshow(bw2); title("Hit-or-Miss");
