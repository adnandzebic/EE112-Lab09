function hh = dtmfdesign(fb, L, fs)
%DTMFDESIGN
%   hh = dtmfdesign(fb, L, fs)
%       returns a matrix (L by length(fb)) where each column contains
%       the impulse response of a BPF, one for each frequency in fb
%   fb = vector of center frequencies
%   L  = length of FIR bandpass filters
%   fs = sampling freq
%
%   Each BPF must be scaled so that its frequency response has a
%   maximum magnitude equal to one.
hh = zeros(L, length(fb)); % Create a matrix of length L times length(fb)
BB = zeros(1, length(fb)); % Create a vector that'll be used for scaling
ww = 0:pi/10000:pi;

% This loop will calculate the normalized freq response for all fb
for ii = 1:length(fb)
    bb = cos(2 * pi * fb(ii) * (0:L-1) / fs); % Coefficients
    HH = freqz(bb, 1, ww); % Calculate the frequency response
    max_value = max(abs(HH)); % Get the max value of response
    BB(ii) = 1 / max_value; % Insert into BB for scaling

    hh2 = bb * BB(ii); % Scale the impulse response to one
    hh(:, ii) = hh2; % Store normalized impulse response into hh matrix
end
