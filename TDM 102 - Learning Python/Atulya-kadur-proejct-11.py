def dep_avg_delays(flightlist):
    """
    function inputs a collection of flights and returns the average of the departure times for each airport
    """
    delays_origin = {}
    for flight in flightlist:
        if flight.origin_airport_ID not in delays_origin:
            delays_dest[flight.origin_airport_ID] = []
        delays_origin[flight.origin_airport_ID].append(flight.get_depdelay())
    average_delays = {myairport: sum(mydelays)/len(mydelays) for myairport, mydelays in delays_origin.items()}
    return average_delaysclass Flight:
    def __init__(self, flight_number, origin_airport_ID, destination_airport_ID, departure_time, arrival_time, departure_delay, arrival_delay):
        self.flight_number = flight_number
        self.origin_airport_ID = origin_airport_ID
        self.destination_airport_ID = destination_airport_ID
        self.departure_time = departure_time
        self.arrival_time = arrival_time
        self.departure_delay = departure_delay
        self.arrival_delay = arrival_delay
    def get_arrdelay(self):
        return self.arrival_delay
    def get_depdelay(self):
        return self.departure_delaylonglistflights = []
for index, row in myDF.iterrows():
    myflight = Flight(
        flight_number = row['Flight_Number_Reporting_Airline'],
        origin_airport_ID = row['Origin'], 
        destination_airport_ID = row['Dest'], 
        departure_time = row['DepTime'], 
        arrival_time = row['ArrTime'], 
        departure_delay = row['DepDelay'], 
        arrival_delay = row['ArrDelay'],
    )
    longlistflights.append(myflight)def arr_avg_delays(flightlist):
    """
    function gets a collection of flight objects then outputs an dictionary of the average delays for each airport
    """
    delays_dest = {}
    for flight in flightlist:
        if flight.destination_airport_ID not in delays_dest:
            delays_dest[flight.destination_airport_ID] = []
        delays_dest[flight.destination_airport_ID].append(flight.get_arrdelay())
    average_delays = {myairport: sum(mydelays)/len(mydelays) for myairport, mydelays in delays_dest.items()}
    return average_delaysarr_avg_delays(longlistflights)delays_destaverage_delaysaverage_delays = {myairport: sum(mydelays)/len(mydelays) for myairport, mydelays in delays_dest.items()}
delays_dest = {}
for flight in longlistflights:
    if flight.destination_airport_ID not in delays_dest:
        delays_dest[flight.destination_airport_ID] = []
    delays_dest[flight.destination_airport_ID].append(flight.get_arrdelay())
    longlistflights = []
for index, row in myDF.iterrows():
    myflight = Flight(
        flight_number = row['Flight_Number_Reporting_Airline'],
        origin_airport_ID = row['Origin'], 
        destination_airport_ID = row['Dest'], 
        departure_time = row['DepTime'], 
        arrival_time = row['ArrTime'], 
        departure_delay = row['DepDelay'], 
        arrival_delay = row['ArrDelay'],
    )
    longlistflights.append(myflight)
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
    columns_to_read = [
    'DepDelay', 'ArrDelay', 'Flight_Number_Reporting_Airline', 'Distance',
    'CarrierDelay', 'WeatherDelay',
    'DepTime', 'ArrTime', 'Origin',
    'Dest', 'AirTime'
]
    myDF.head()
    