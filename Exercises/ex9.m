% 9.1
I = imread("imagens\estrada.tif");
figure;
subplot(2, 2, 1); imshow(I); title("Original");
% Create binary image
BW = edge(I, "sobel");
subplot(2, 2, 2); imshow(BW); title("BW");
%C reate the Hough transform using the binary image
[H, T, R] = hough(BW);
subplot(2, 2, 3);
imshow(H, [], 'XData', T, 'YData', R, 'InitialMagnification', 'fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
colormap(gca, "turbo");
title("Hough");
% Find peaks in the Hough transform of the image
P = houghpeaks(H, 2);
x = T(P(:, 2)); y = R(P(:, 1));
plot(x, y, 's', 'color', 'white');
% Find lines and plot them
lines = houghlines(BW, T, R, P);
subplot(2, 2, 4), imshow(I), hold on
for k = 1:length(lines)
    xy = [lines(k).point1; lines(k).point2];
    plot(xy(:, 1), xy(:, 2), 'LineWidth', 2, 'Color', 'green');
    % Plot beginnings and ends of lines
    plot(xy(1, 1), xy(1, 2), 'x', 'LineWidth', 2, 'Color', 'yellow');
    plot(xy(2, 1), xy(2, 2), 'x', 'LineWidth', 2, 'Color', 'red');
end

% 9.2
I = imread("imagens\bolas.jpg");
imshow(I);
% Big circles
[centersBig, radiiBig] = imfindcircles(I, [10 20], "ObjectPolarity", "dark");
viscircles(centersBig, radiiBig, "Color", "red");
% Small circles
[centersSmall, radiiSmall] = imfindcircles(I, [3 9], "ObjectPolarity", "dark");
viscircles(centersSmall, radiiSmall, "Color", "blue");
