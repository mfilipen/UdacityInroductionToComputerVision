% Test code:
s = [-1 0 0 1 1 1 0 -1 -1 0 1 0 0 -1];
t = [1 1 0 -1];


subplot(1,3,1);
plot(1:size(s, 2), s);
title('Signal');
axis ([0 15 min(s)-0.5 max(s)+0.5]);

subplot(1,3,2);
plot(1:size(t, 2), t);
title('Template');
axis ([0 15 min(s)-0.5 max(s)+0.5]);

index = find_template_1D(t, s);
disp('Index:'), disp(index);

% Find template 1D
function index = find_template_1D(t, s)

    w = normxcorr2(t,s);
    
    subplot(1,3,3);
    plot([1:size(w, 2)]-size(t,2)+1, w);
    title('Normalized 2-D cross-correlation');
    k = find(w==1);
    index=k(1)-size(t,2)+1;
    disp('Convol:'), disp(index);
    
    
    
end
