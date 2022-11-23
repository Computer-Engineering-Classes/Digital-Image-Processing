function EP2()
clc, clear, close all

f = figure;
set(0, "CurrentFigure", f);

for i = 50:70
    I = imread("TP02\fig" + i + ".jpg");
    I = rgb2gray(I);
    [width, height] = deal(290, 200);
    Icropped = imcrop(I, [190, 175, width - 1, height - 1]);
    subplot(2, 2, 1); imshow(Icropped); title("Cropped");

    T = graythresh(Icropped);
    BW = imbinarize(Icropped, T);
    subplot(2, 2, 2); imshow(BW); title("Binarized");
    
    SE = strel("disk", 3);
    J = imopen(BW, SE);
    subplot(2, 2, 3); imshow(J); title("Opened");
    
    theta = 0:0.01:2*pi;
    radius = 85;
    X = radius * cos(theta) + width/2;
    Y = radius * sin(theta) + height/2;
    mask = ~poly2mask(X, Y, height, width);
    Z = imadd(J, mask);
    subplot(2, 2, 4); imshow(Z); title("Masked");
    
    pause(0.1);
end

end