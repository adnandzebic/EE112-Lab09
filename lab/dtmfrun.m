function keys = dtmfrun(xx, L, fs)
%DTMFRUN    keys = dtmfrun(xx, L, fs)
%   Returns the list of key names found in xx.
%       keys = array of characters, i.e., the decoded key names
%         xx = DTMF waveform
%          L = filter length
%         fs = sampling freq
%
center_freqz = [697 770 852 941 1209 1336 1477 1633];
dtmf.keys = ['1', '2', '3', 'A';
             '4', '5', '6', 'B';
             '7', '8', '9', 'C';
             '*', '0', '#', 'D'];

hh = dtmfdesign(center_freqz, L, fs);
% hh = L by 8 matrix of all the filters. Each column contains the
% impulse response of one BPF (bandpass filter)
%
[nstart, nstop] = dtmfcut(xx, fs); %<-- Find the beginning and end of tone bursts
keys = [];
p = zeros(1,8); % store the score values
for kk=1:length(nstart)
    x_seg = xx(nstart(kk):nstop(kk)); %<-- Extract one DTMF tone

    for ii = 1:8
        p(ii) = dtmfscore(x_seg, hh(:, ii)); % Get score
    end
    num_freq = find(p==1);

    if length(num_freq)>2 % More than 2 frequencies shouldn't be scored
        keys = [keys, 'Error: There were more than 2 frequencies scored'];
    else
        row_index = find(p(1:4) == 1);
        col_index = find(p(5:8) == 1);
        keys = [keys, dtmf.keys(row_index, col_index)];
    end
end
end
