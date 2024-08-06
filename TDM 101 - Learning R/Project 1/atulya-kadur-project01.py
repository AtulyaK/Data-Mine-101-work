import socket print(socket.gethostname())

import pandas as pd
df = pd.read_csv('/anvil/projects/tdm/data/flights/subset/1991.csv')
df[df["Month"]==12].head() # see information about a few of the flights from December 1991


#Calculates the amount of memory available in bytes Anvil sub-cluster A has.
256*1000*1000000000

#Calculates the amount of memory available in TeraBytes ANvil Sub-Cluster A has
(256*1000)/1000

