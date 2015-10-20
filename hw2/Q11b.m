figure(1);
filename = 'Q11b.gif';
for i = 1:200
    regGeneralStar(79, i);
    drawnow;
    frame = getframe(1);
    im = frame2im(frame);
    [imind, cm] = rgb2ind(im, 256);
    if i == 1;
        imwrite(imind, cm, filename, 'gif', 'Loopcount', inf);
    else
        imwrite(imind, cm, filename, 'gif', 'WriteMode', 'append');
    end
end
