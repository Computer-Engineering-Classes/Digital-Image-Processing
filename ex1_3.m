imgpath = "imagens\retina.tif";
I = imread(imgpath);

figure();
imshow(I);
impixelinfo();

[rows, cols, bands] = size(I);
fprintf("Image dimensions: %d x %d\n", rows, cols);
fprintf("Image bands: %d\n", bands);
fprintf("Total pixels: %d\n", rows * cols);

info = imfinfo(imgpath, "tif");
disp(info);