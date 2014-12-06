ww_d = 0:pi/10000:pi;
L_min = 0; % Default

% This loop determines the smallest L that can be used
for L = 40:100
    hh = dtmfdesign([697], L, 8000); % Returns a single vector (impulse response)
    HH = freqz(hh, 1, ww_d); % Generates the frequency response
    stopband = find(abs(HH) >= 0.25); % Determines the indexes in the stopband
    stopband_right = ww_d(stopband(length(stopband))); % Determines the right index

    if (2 * pi * 770 / 8000 >= stopband_right) % Checks if 770 Hz is in the stopband
        L_min = L; % Successfully determined L_min -> Leave loop
        break
    end
end
