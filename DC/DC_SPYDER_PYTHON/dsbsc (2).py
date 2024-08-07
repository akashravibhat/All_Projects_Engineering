# -*- coding: utf-8 -*-
"""
Created on Wed Oct 03 19:01:11 2018

Generation and demodulation of DSB-SC signal

@author: Vamsi Krishna
"""

# PLOT POWER SPECTRUM
from scipy import signal
from scipy.signal import butter, lfilter, freqz
import numpy as np
import matplotlib.pyplot as plt

N = 1e5 # Number of samples
Ac = 1 # Carrier pak amplitude *np.sqrt(2) 
Am = 0.5 # Message signal peak amplitude
freq_c = 10e3 # carrier frequency
freq_m = 500 # message frequency
fs = 2.5*(freq_c+freq_m) # sampling frequency

def butter_lowpass(cutoff, fs, order=10):
    nyq = 0.5 * fs
    normal_cutoff = cutoff / nyq
    b, a = butter(order, normal_cutoff, btype='low', analog=False)
    return b, a

def butter_lowpass_filter(data, cutoff, fs, order=10):
    b, a = butter_lowpass(cutoff, fs, order=order)
    y = lfilter(b, a, data)
    return y

order=10
cutoff=2*freq_m

time = np.arange(N) / fs # sampling interval
c = Ac*np.cos(2*np.pi*freq_c*time) # Carrier signal
m = Am*np.cos(2*np.pi*freq_m*time) # Message signal
s= m*c # DSB-SC signal
y=s*c # product modulator output at receiver

x = butter_lowpass_filter(y, cutoff, fs, order) # low pass filter

#x += np.random.normal(scale=np.sqrt(noise_power), size=time.shape)

#
#### signal.welch
# Set first argument to s, y or x to see the spectrum of DSBSC wave, product modulator output at the receiver or demodulated signal
f, Pxx_spec = signal.welch(s, fs, 'flattop', 1024, scaling='spectrum',return_onesided=True) # for two sided spectrum set False
plt.figure()
plt.semilogy(f, np.sqrt(Pxx_spec))
plt.xlabel('frequency [Hz]')
plt.ylabel('Linear spectrum [V RMS]')
plt.title('Power spectrum')
plt.show()

plt.plot(time[0:200],x[0:200]) # demodulated signal waveform
plt.xlabel('Time (seconds)')
plt.ylabel('Voltage [volts]')
plt.title('Demodulated signal')
plt.grid()