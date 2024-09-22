w1 = 1; % rad/s
w2 = 20; % rad/s
A = 1; % m
B = 0.5; % m

plot(0,0,"om")
hold on
hb1 = plot([0 A], [0 B], 'g');
hb2 = plot([A A+B], [0 0 ], 'c');
hpr = plot(A, B, 'om');
hd = plot(A+B, 0, '.m');
hpc = plot(A+B, 0, 'om');


axis([-2 2 -2 2])

n = 1;

for t = 0:0.001:pi
    rx = A*cos(w1*t);
    ry = A*sin(w1*t);
    cx(n) = rx + B*cos(w2*t);
    cy(n) = ry + B*sin(w2*t);

    set(hb1, 'XData', [0 rx], 'YData', [0 ry])    
    set(hb2, 'XData', [rx cx(n)], 'YData', [ry cy(n)])
    set(hpr, 'XData', rx, 'YData',ry)
    set(hpc, 'XData',[cx(n)], 'YData',[cy(n)])

    set(hd, 'XData',cx, 'YData',cy)

    n = n+1;
    drawnow

end

