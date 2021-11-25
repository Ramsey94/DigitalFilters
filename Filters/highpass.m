function h=highpass(f_c,f_samp,N)
% f_c, the cutoff frequency for the high pass filter, in Hz
% f_samp, sampling frequency of the audio signal to be filtered, in Hz
% N, the order of the filter; assume N is odd
% h, a high-pass FIR filter in the form of an N-element array */
%Normalize f_c and ? _c so that pi is equal to the Nyquist angular frequency

f_c = f_c/f_samp;

w_c = 2*pi*f_c

middle = N/2;    %Integer division, dropping remainder


inputVals =-(N/2):(N/2);
for i = 1:numel(inputVals)

   if (i == 0) h(middle) = 1 - 2*f_c

   else
       h(i) = -sin(w_c*i)/(pi*i);
   end
end
