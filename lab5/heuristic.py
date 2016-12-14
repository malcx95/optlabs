import numpy as np
import time
import sys

e = 1

prob = " ".join(sys.argv[1:]).split('.')[0]
fil = prob+'.npz'

npzfile  =  np.load(fil)
npzfile.files
possible_locations = npzfile['m']
num_customer = npzfile['n']
capacity = npzfile['s']
demand = npzfile['d']
fixed_price = npzfile['f']
transport_cost = npzfile['c']
#print 'm:',m,' n:',n
#print 's:',s
#print 'd:',d
#print 'f:',f
#print 'c:',c

t1 = time.time()
transported_amount = np.zeros((possible_locations, num_customer), dtype = np.int)
 = np.zeros((possible_locations),dtype = np.int)

while sum(demand) > 0:
    # find facility, find customer, send, at min cost
    # set x and y
    # deduct from ss and dd, 
    # --------



elapsed = time.time() - t1
print 'Tid: '+str('%.4f' % elapsed)

cost = sum(sum(np.multiply(c,x))) + e*np.dot(f,y)
print 'Problem:',prob,' Totalkostnad: '+str(cost)
print 'y:',y
print 'Antal byggda fabriker:',sum(y),'(av',m,')'
