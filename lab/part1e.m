all_frequencies = [697 770 852 941 1209 1336 1477 1633];
ww = 0:pi/10000:pi;
fs = 8000; % Sampling rate is still set at 8000
L = 80; % Should result in a good passing bandwidth
A = dtmfdesign(all_frequencies, L, fs); % Generate a matrix of impulse responses
HH = zeros(length(ww), 8); % Instantiating a matrix of frequency responses

for ii = 1:8
    HH(:, ii) = freqz(A(:, ii), 1, ww); % Store frequency responses into HH
end


% Plot
figure(1)
plot(ww, abs(HH));
hold on
line([0,pi], [0.707,0.707],'Color', 'g', 'LineStyle', ':')
title('Eight Bandpass Filters at Different Frequencies with L=80')
ylabel('Amplitude')
xlabel('Normalized Frequency')
hold off
