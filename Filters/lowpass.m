%% funcon filtros Daniel

% Low Pass Filter

function h=lowpass(fc,f_samp,N)
% f_c, the cutoff frequency for the low-pass filter, in Hz
% f_samp, sampling frequency of the audio signal to be filtered, in Hz
% N, the order of the filter; assume N is odd
% h, a low-pass FIR filter in the form of an N-element array */

% Normalize f_c and ? _c so that pi is equal to the Nyquist angular frequency

fc = fc/f_samp;
wc = 2*pi*fc;

middle = N/2;    %Integer division, dropping remainder
inputVals =-(N/2):(N/2);


for i = 1:numel(inputVals)

   if (i == 0) 
       h(middle) = 2*fc;
   else
       h(i) = sin(wc*i)/(pi*i);
   end
end
end











