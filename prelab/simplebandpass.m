Wc = 0.2 * pi; % passing frequency
L = 51; % length of filter (inversely correlated with bandwidth)
n = 0:L-1;
ww = 0:pi/1000:pi;
bb = cos(Wc * n); % coefficients (extracted from given h[n])
HH = freqz(bb, 1 ,ww); % frequency response

subplot(211)
plot(ww, abs(HH))
title('Frequency Response')
xlabel('Frequency')
ylabel('Amplitude')

max_value = max(abs(HH)); % get the highest peak value of the frequency response
bb2 = 1 / max_value * bb; % normalize the coefficients
HH2 = freqz(bb2,1,ww);

subplot(212)
plot(ww, abs(HH2))
title('Normalized Frequency Response')
xlabel('Frequency')
ylabel('Amplitude')

passband = find(abs(HH2) >= 0.707); % fetches the passing frequencies
lower_freq = ww(passband(1)); % gets the lower 3dB freq value
upper_freq = ww(passband(length(passband))); % upper 3dB freq value
BW = abs(ww(passband(1)) - ww(passband(length(passband)))); % bandwidth

samp_rate = 8000; % 8000Hz
lower_analog = lower_freq * 8000 / (2 * pi); % 736 Hz
upper_analog = upper_freq * 8000 / (2 * pi); % 868 Hz



