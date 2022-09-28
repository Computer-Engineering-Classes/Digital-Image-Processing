% 2.1
img1 = imread("imagens\rx_mao.jpg");
ndc = img1(180, 70);
img1(180, 70) = 20;
figure(1); imshow(img1);

% 2.2
img2 = imread("imagens\rx_mao.jpg");
img2(10:30, 10:30) = 100;
figure(2); imshow(img2);

% 2.3
img3_1 = imread("imagens\irina.jpg");
img3_2 = imread("imagens\cristiano.jpg");
img3 = [img3_1, img3_2];
figure(3); imshow(img3);

% 2.4
img4 = imread("imagens\Rx_bexiga.jpg");
sub_img4 = imcrop(img4, [72, 70, 90, 80]);
figure(4); imshow(sub_img4);

% 2.5
img5 = imread("imagens\rx_mao.jpg");
img5_rs = imresize(img5, 2);
figure(5); imshow(img5_rs);

% 2.6
img6 = imread("imagens\brain.jpg");
img6_rt = imrotate(img6, 180);
figure(6); imshow(img6_rt);
