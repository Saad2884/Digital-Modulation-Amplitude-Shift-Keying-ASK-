fs=200e3; % sampling frequency
t=0:1/fs:0.01; % defining x-axis
 
am=1;
fd=500;
mt=am*square(2*pi*fd*t,25)+am*square(2*pi*fd*t,50)+am*square(2*pi*fd*t,75)+am*square(2*pi*fd*t,100); % digital message signal
subplot(311);
plot(t,mt);
title('DIGITAL SIGNAL');
xlabel('Time');
ylabel('Amplitude');
 
ac=1;
fc=5e3;
ct=ac*cos(2*pi*fc*t); % carrier signal
subplot(312);
plot(t,ct);
title('CARRIER SIGNAL');
xlabel('Time');
ylabel('Amplitude');
 
ask=(ac*mt).*cos(2*pi*fc*t); % ASK modulated signal
subplot(313);
plot(t,ask);
title('MODULATED SIGNAL');
xlabel('Time');
ylabel('Amplitude');
