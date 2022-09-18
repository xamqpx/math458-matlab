% bisection method:
% narrowing down a range [a, b], where a and b are s.t. f(a)*f(b) < 0,
% which guarantees that ∃x in [a, b] s.t. f(x) = 0.
% for each iterate, x = the midpoint of a and b

format long

a = -1;
b = 0;

% tracks # of iterations
n = 0;

% arbitrary value for while loop condition
error = 2;

% error can be changed to any desired value
while error >= 10^(-12)
    n = n + 1;
    disp(n + ": " + a + " " + b)

    % calculate x as midpoint
    x = (a + b)/2;
    disp("x_" + n + " = " + x);

    % find error upper bound
    error = (b - a)/2;
    disp("error: " + error)

    % calculate f(a), f(x), f(b)
    f_a = 6*a + 1 - (atan(a))^2;
    f_x = 6*x + 1 - (atan(x))^2;
    f_b = 6*b + 1 - (atan(a))^2;

    % for the next iterate, must find new a, b s.t. f(a)*f(b) < 0
    % this can either be current a, x:
    if f_a * f_x < 0
        b = x;
    end
    % ... or current x, b:
    if f_x * f_b < 0
        a = x;
    end
end

% output final x after exiting loop
x
