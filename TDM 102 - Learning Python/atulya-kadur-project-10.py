start_time = time.time()

DepDelay = myDF['DepTime'].to_numpy()
ArrDelay = myDF['ArrTime'].to_numpy()
Distance = myDF['Distance'].to_numpy()

delayed_flights_numpy = Distance[(DepDelay > 60) | (ArrDelay > 60)]
print(f"Mean of FLight distance delayed: {np.mean(delayed_flights_numpy)}\n")


end_time = time.time()
print(f"Used time is {end_time - start_time}")
start_time = time.time()

delayedflights = myDF[ (myDF['ArrTime'] > 60) | (myDF['DepTime'] > 60)]
print(f"Mean of FLight distance delayed: {delayedflights['Distance'].mean()}\n")

end_time = time.time()
print(f"Used time is {end_time - start_time}")
import time as time
arrdelays = myDF['ArrDelay'].to_numpy()
arrdelays = np.nan_to_num(mydelays, nan = 0)
print(f"Max Arrival Delay: {np.max(arrdelays)} minutes")
print(f"Max Arrival Delay: {np.min(arrdelays)} minutes")
print(f"The average Departure Delay before adding 15 minutes is: {np.mean(mydelays + 15)}")
print(f"The average Departure Delay before adding 15 minutes is: {np.mean(mydelays)}")
#checks number of nan values
np.count_nonzero(np.isnan(mydelays))
mydelays = np.nan_to_num(mydelays, nan = 0)
mydelays.dtype
mydelays.shape
mydelays = myDF['DepDelay'].to_numpy()
myDF.head
myDF = pd.read_csv('/anvil/projects/tdm/data/flights/2014.csv', usecols = cols, dtype = col_types)
col_types = {
    'DepDelay': 'float64',
    'ArrDelay': 'float64',
    'Distance': 'float64',
    'CarrierDelay': 'float64',
    'WeatherDelay': 'float64',
    'DepTime': 'float64',
    'ArrTime': 'float64',
    'Diverted': 'int64',
    'AirTime': 'float64'
}
cols = ['DepDelay', 'ArrDelay', 'Distance','CarrierDelay', 'WeatherDelay','DepTime', 'ArrTime', 'Diverted', 'AirTime']
pd.set_option('display.max_columns', None)
import numpy as np
import pandas as pd
