#!/usr/bin/python

import pandas as pd
from scipy.spatial.distance import cdist

def closest_node(node, nodes):
        return nodes[cdist([node], nodes).argmin()]

# Give names to the columns.
column_names = ["x","y"]

# Load the csv with pandas.
csv = pd.read_csv("data.csv", names=column_names)

# Create the list for data array.
data = []

# Fill the pointpool list.
for i in xrange(len(csv)):
    data.append([csv.x[i],csv.y[i]])

# Open output file.
out = open("toplot.csv","w")

for i in xrange(len(csv)):
    p1 = closest_node([csv.x[i],csv.y[i]], data) 
    out.write(str(p1[0]) + "," + str(p1[1]) + "\n")

out.close()
