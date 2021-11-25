function h=bandpass(f1,f2,f_samp,N)

% Normalize f_c and ? _c so that pi is equal to the Nyquist angular frequency

  f1_c = f1/f_samp;

  f2_c = f2/f_samp;

  w1_c = 2*pi*f1_c;

  w2_c = 2*pi*f2_c;

  middle = N/2 ;   %Integer division, dropping remainder

  
  inputVals =-(N/2):(N/2);
  for i = 1:numel(inputVals)

   if (i == 0) 
       h(middle) = 2*(f2_c - f1_c)

   else
  h(i) = sin(w2_c*i)/(pi*i) - sin(w1_c*i)/(pi*i);
   end
  end
end
