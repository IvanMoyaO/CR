x = [zeros(1,5) 0.5 2 zeros(1,7)];
h = [zeros(1,5) 1 1 1 1 zeros(1,5)];

for k=1:length(x)
    if (k < 6)
        
        C(k,:) = x(k) * [h(7-k:end) zeros(1,6-k)];

    elseif(k == 6)

        C(k,:) = x(k) * h;

    elseif(k>6)

        C(k,:) = x(k) * [zeros(1,k-6) h(1:end-(k-6))];
    
    end
end

convolocion = sum(C);

subplot(3,1,1)
stem(x)
subplot(3,1,2)
stem(h)
subplot(3,1,3)
stem(convolocion)


% Deberes: con las otras dos que hemos visto