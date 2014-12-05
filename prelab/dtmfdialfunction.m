function xx = dtmfdial(keyNames, fs)
    dtmf.keys = ...
        ['1', '2', '3', 'A';
         '4', '5', '6', 'B';
         '7', '8', '9', 'C';
         '*', '0', '#', 'D'];

    dtmf.colTones = ones(4,1) * [1209, 1336, 1477, 1633];
    dtmf.rowTones = [697; 770; 852; 941] * ones(1,4);

    xx = [];

    % --- START THE FOR LOOP --- %
    for ii = 1:length(keyNames)
        switch keyNames(ii) % This is case sensitive
            case 0
                [jj, kk] = find('0' == dtmf.keys); % Fetches the row-column indices
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs); % First signal
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs); % Second Signal
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 1
                [jj, kk] = find('1' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 2
                [jj, kk] = find('2' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 3
                [jj, kk] = find('3' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 4
                [jj, kk] = find('4' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 5
                [jj, kk] = find('5' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 6
                [jj, kk] = find('6' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 7
                [jj, kk] = find('7' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 8
                [jj, kk] = find('8' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 9
                [jj, kk] = find('9' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case '*'
                [jj, kk] = find('*' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case '#'
                [jj, kk] = find('#' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 'A'
                [jj, kk] = find('A' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 'B'
                [jj, kk] = find('B' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 'C'
                [jj, kk] = find('C' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            case 'D'
                [jj, kk] = find('D' == dtmf.keys);
                dtmf.keys(jj, kk)
                xx1 = cos(2 * pi * dtmf.colTones(jj) * (0:1599) / fs);
                xx2 = cos(2 * pi * dtmf.rowTones(kk) * (0:1599) / fs);
                xx3 = cos(pi / 2 * (0:399) / fs); % Creates a delay of 0.05 secs
                xx = [xx, xx1 + xx2]
                xx = [xx, xx3]; % Concatenate the delay signal
            otherwise
                disp('You wrote something else')
        end % close the switch statement
    end % close the for loop
end % close the function loop
% MY TEST
