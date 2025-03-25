%Assessment task

% Example coefficients for a simple low-pass biquad filter
b = [0.2929, 0.5858, 0.2929];  % Feedforward
a = [1.0000, -0.0000, 0.1716]; % Feedback

% Example signal (random noise)
x = randn(1, 1000);

% Apply the biquad filter
y = filter(b, a, x);

% Plot the result
plot(y);
title('Filtered Signal');

fs = 44100;         % Sampling frequency (Hz)
fc = 100;          % Cutoff frequency (Hz)
[b, a] = butter(2, fc/(fs/2));   % 2nd-order low-pass Butterworth

x = randn(1, 1000);  % Input signal
y = filter(b, a, x); % Apply the filter

plot(y);
title('Butterworth Biquad Filtered Signal');

