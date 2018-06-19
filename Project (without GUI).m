%%% No.1

t= linspace(0,15);
y=sin(t);
plot(t,y),grid on

t= linspace(0,15);
y1= sin(t);
y2= 2*sin(t);
y3= sin(t)+0.5;
y4= sin(4*t);


subplot(2,2,1)
plot(t,y1), grid on
title('original signal : sin(t)')

subplot(2,2,2)
plot(t,y2), grid on
title('Amplitude is changed : 2sin(t)')

subplot(2,2,3)
plot(t,y3), grid on
title('Phase is changed: sint(t)+0.5')

subplot(2,2,4)
plot(t,y4) , grid on
title('Frequency is changed : sint(4t)')

%%% No.2
n=linspace(-pi,pi,10)
y=cos(n);
stem(y) ,grid on

n=linspace(-pi,pi,10)
y1=cos(n);
y2=2*cos(n);
y3=cos(n)+0.5;
y4=cos(2*n);

subplot(2,2,1)
stem(y1),grid on
title('Original signal')

subplot(2,2,2)
stem(y2) ,grid on
title('Amplitude is changed')

subplot(2,2,3)
stem(y3),grid on
title('pahes is changed')

subplot(2,2,4)
stem(y4),grid on
title('Frequency is changed')


%%%NO.3
syms k x
a=symsum((.5)^k,k,0,inf)  
b=symsum((2)^k,k,0,5)

%%%NO.4
syms t
int(exp(t),t,-inf,0)

%%%NO.5
y= x^3
diff(y)

%%%NO.6
x=[3 2 1]
h= [2 1 3]
conv(x,h)

%%%No.7
syms n
x = (1/4)^n
ztrans(x)

%%%NO.8
Fs = 1000;                    % Sampling frequency
T = 1/Fs;                     % Sample time
L = 1000;                     % Length of signal
t = (0:L-1)*T;                % Time vector


% Sum of a 50 Hz sinusoid and a 120 Hz sinusoid

x = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t); 
y = x + 2*randn(size(t));     % Sinusoids plus noise
plot(Fs*t(1:50),y(1:50))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('time (milliseconds)')
NFFT = 2^nextpow2(L);          % Next power of 2 from length of y
Y = fft(y,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);


% Plot single-sided amplitude spectrum.

plot(f,2*abs(Y(1:NFFT/2+1))) 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
