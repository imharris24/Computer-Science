# MUHAMMAD HARRIS - BCS203193
# Graph Algorithms - Assignment 3

import networkx
import pandas
import os
import matplotlib.pyplot
import openpyxl

menu = """*GRAPH ALGORITHM ASSIGNMENT*
1. Visualize Graph
2. Degrees of all Nodes
3. Degree Centrality
4. Betweenness Centrality
5. Closeness Centrality
6. Exit"""

# function to visualize the graph
def visualizeGraph(g):
    networkx.draw(g, pos=networkx.spring_layout(g), with_labels=True, node_size=1000, node_color='#49be25')
    matplotlib.pyplot.show()

# function to display degree of all nodes
def printDegrees(g, nodes):
    print('\nDegree of all nodes:')
    for n in nodes:
        print(n, ' = ', graph.degree(n))

# function to display degree centrality
def printDegreeCentrality(g, nodes):
    print('\nDegree Centrality:')
    degreeCentrality = networkx.degree_centrality(g)
    for n in nodes:
        print(n, ' = ', degreeCentrality[n])

# function to display betweenness centrality
def printBetweennessCentrality(g, nodes):
    print('\nBetweenness Centrality:')
    betweennessCentrality = networkx.betweenness_centrality(g)
    for n in nodes:
        print(n, ' = ', betweennessCentrality[n])

# function to display closeness centrality
def printClosenessCentrality(g, nodes):
    print('\nCloseness Centrality:')
    closenessCentrality = networkx.closeness_centrality(g)
    for n in nodes:
        print(n, ' = ', closenessCentrality[n])

# main

# importing data from .xlsx file
filePath = r'C:\Users\Harri\OneDrive\Desktop\Assignment3_Dataset.xlsx'
data = pandas.read_excel(filePath)

# creating graph using data from .xlsx file
graph = networkx.Graph()
for i in range(0, len(data)):
    graph.add_edge(data.iloc[i, 0], data.iloc[i, 1]) # creating edge between columns of each row of Excel sheet

# creating a node list of graph
nodeList = graph.nodes()

# menu system
while True:
    os.system('cls')
    print(menu)
    option = input('option: ')[0]
    if option == '1':
        visualizeGraph(graph)
    elif option == '2':
        printDegrees(graph, nodeList)
        input('\npress enter key to return to menu...')
    elif option == '3':
        printDegreeCentrality(graph, nodeList)
        input('\npress enter key to return to menu...')
    elif option == '4':
        printBetweennessCentrality(graph, nodeList)
        input('\npress enter key to return to menu...')
    elif option == '5':
        printClosenessCentrality(graph, nodeList)
        input('\npress enter key to return to menu...')
    elif option == '6':
        break
    else:
        continue
