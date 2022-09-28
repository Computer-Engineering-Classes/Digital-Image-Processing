imgs = [
    "imagens\rx_mao.jpg"
    "imagens\rx_torax.jpg"
    "imagens\Rx_bexiga.jpg"
    "imagens\brain.jpg"
    ];

titles = ["Rx Mão", "Rx Tórax", "Rx Bexiga", "Cérebro"];

figure();

for i = 1:4
    subplot(2, 2, i);
    imshow(imread(imgs(i)));
    title(titles(i));
end