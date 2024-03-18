function [y] = FiltradoIIR(b, a, x)
    n= length(a);
    ci=zeros(1,n);     
    b = b / a(1); 
    a = a / a(1);
    y    = zeros(size(x));
    for m = 1:length(y)
       y(m) = b(1) * x(m) + ci(1);
       for i = 2:n
          ci(i - 1) = b(i) * x(m) + ci(i) - a(i) * y(m);
       end
    end
    ci = ci(1:n - 1);
end