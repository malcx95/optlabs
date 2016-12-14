#!/usr/bin/env python3
import numpy as np
import time
import sys

for e in [0.001, 0.1, 1, 10, 100]:

    print('')
    print('##################################################')
    print('e = ', e)
#e = 1

    prob = " ".join(sys.argv[1:]).split('.')[0]
    fil = prob + '.npz'

    npzfile  =  np.load(fil)
    npzfile.files
    possible_locations = npzfile['m']
    num_customer = npzfile['n']
    capacity = npzfile['s']
    demand = npzfile['d']
    fixed_price = npzfile['f']
    transport_cost = npzfile['c']

    t1 = time.time()
    transported_amount = np.zeros((possible_locations, num_customer), dtype = np.int)
    should_build = np.zeros((possible_locations),dtype = np.int)

# Bygg den billigaste fabriken så länge det finns kunder utan upfylld efterfrågan
    for factory, price in sorted(enumerate(fixed_price), key=lambda x: x[1]):
        if sum(demand) > 0:
            should_build[factory] = 1

            # Ta de kunder som bor närmast och skicka så mycket som möjligt till dem
            for cust, _ in sorted(enumerate(transport_cost[factory]), key=lambda x: x[1]):
                amount = min(demand[cust], capacity[factory])
                demand[cust] -= amount
                capacity[factory] -= amount
                transported_amount[factory][cust] += amount
            


    elapsed = time.time() - t1
    print('Tid: ', str('%.4f' % elapsed))

    cost = sum(sum(np.multiply(transport_cost, transported_amount))) + \
        e * np.dot(fixed_price, should_build)
    print('Problem: {} Totalkostnad: {}'.format(prob, cost))
    print('y:', should_build)
    print('Antal byggda fabriker: {} (av {})'.format(sum(should_build), possible_locations))

    print('##################################################')

