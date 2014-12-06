fs = 8000;
tk = '407*89132#BADC';
xx = dtmfdial(tk, fs);
soundsc(xx, fs) % Makes dialing sound
L = 87;

dtmfrun(xx, L, fs) % Outputs '407*89132#BADC'
