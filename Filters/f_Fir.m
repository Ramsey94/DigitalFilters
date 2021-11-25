function [b_Manual,b_Fir]=f_Fir(s_Orden,v_fc,str_tipo,s_fs)
wn = [2.5e6 29e6]/500e6;
N=s_Orden;
x=0
if x==1
elseif str_tipo=='bandstop'
    f1=v_fc(1);
    f2=v_fc(2);
    b_Manual=bandpass(f1,f2,s_fs,N);
    b = fir1(N,wn,'STOP'); 
    
elseif str_tipo=='highpass'
    b_Manual=highpass(v_fc,s_fs,N);
    b = fir1(N,wn,'high');
    freqz(b,1);
elseif str_tipo=='bandpass'
    f1=v_fc(1);
    f2=v_fc(2);
    b_Manual=bandpass(f1,f2,s_fs,N);

    b = fir1(N,[f1 f2]*2/s_fs,'bandpass');
    freqz(b,1,512);
    
    
else%lowpass
    b_Manual=lowpass(fc,f_samp,N);
    b = fir1(N,fc*2/s_fs,'low');
    freqz(bhi,1);
end

end