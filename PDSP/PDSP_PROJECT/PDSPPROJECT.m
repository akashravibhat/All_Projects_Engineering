% Input sequence
x = [1, 2, 3, 4, 4, 3, 2, 1];

% Bit-reversal permutation
N = length(x);
n = log2(N);
idx = bitrevorder(0:N-1) + 1;
x = x(idx);

% Butterfly diagram
for s = 1:n
    m = 2^s;
    mhalf = m/2;
    w_m = exp(-1i*2*pi/m);
    for k = 0:mhalf-1
        w = w_m^k;
        for r = 0:N/m-1
            a = r*m + k + 1;
            b = a + mhalf;
            A = x(a);
            B = w*x(b);
            x(a) = A + B;
            x(b) = A - B;
        end
    end
    
    % Print intermediate results
    fprintf('\nStage %d:\n', s);
    for i = 1:N
        fprintf('x(%d) = %f + %fj\n', i, real(x(i)), imag(x(i)));
    end
end

% Output sequence
X=x;