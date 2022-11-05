# libraries
import os
import networkx
import matplotlib.pyplot as plot

# functions 
def printMenu():
    print("""|-------------------------------- MENU --------------------------------|
1. Display Nodes List of the Graph
2. Display Edge List of the Graph
3. Count Connected Components of the Graph
4. Print Connected Components of the Graph
5. Display Incidence Matrix of a Graph
6. Display the Nodes degrees
7. Count Number of Edges
8. Visualize the graphs
9. Check if:
    a. Euler circuit exist or not and Graph is Eulerian
    b. Euler path exists or not
    c. Hamilton Path
    d. Perform Depth First and Breadth First Traversal on graph""")
def printNodeList(graph):
    os.system('cls')
    nodeList = graph.nodes() # get node list of graph
    print('Node List of Graph:')
    for x in nodeList:
        print(x, end=', ') # print each node
    input('\n\npress enter to return...')
def printEdgeList(graph):
    os.system('cls')
    edgeList = graph.edges() # get edge list of graph
    print('Edge List of Graph:')
    for x in edgeList:
        print(x[0], '->', x[1], end=', ') # print each edge
    input('\n\npress enter to return...')
def printCountConnectedComponents(graph):
    os.system('cls')
    count = networkx.number_connected_components(graph) # get number of connected components
    print('Number of Connected Components in Graph: ', count) # print count
    input('\npress enter to return...')
def printConnectedComponents(graph):
    os.system('cls')
    connectedComponents = [len(c) for c in sorted(networkx.connected_components(graph), key=len, reverse=True)] # get connected components
    print('Length of Connected Components in Sorted Order:')
    for x in connectedComponents: 
        print(x) # print length of each connected component
    input('\npress enter to return...')
def printIncidenceMatrix(graph):
    os.system('cls')
    incidenceMatrix = networkx.to_numpy_matrix(graph) # get incidence matix
    incidenceMatrixString = str(incidenceMatrix).replace('[','').replace(']','').replace('.','')
    print('Incidence Matrix of Graph: ')
    print('',incidenceMatrixString) # print incidence matrix
    input('\npress enter to return...')
def printNodeDegrees(graph):
    os.system('cls')
    print('Degree of all Nodes in Graph:')
    nodeN = 'a'
    for x in range(6):
        print(nodeN, ' = ', graph.degree(nodeN)) # print degree of each node
        nodeN = chr(ord(nodeN)+1)
    input('\npress enter to return...')
def printCountEdges(graph):
    os.system('cls')
    print('Number of Edges in Graph: ', networkx.number_of_edges(graph)) # print number of edges in graph
    input('\npress enter to return...')
def visualizeGraph(graph):
    os.system('cls')
    networkx.draw(graph, with_labels = True) # draw graph with labels
    plot.show()
    input('press enter to return...')
def printIsEulerian(graph):
    os.system('cls')
    if networkx.is_eulerian(graph): # check if graph is euler or not
        print('a. Graph is Euler Graph.')
    else:
        print('a. Graph is not Euler.')
def printHasEulerPath(graph):
    if networkx.has_eulerian_path(graph): # check if graph has euler path or not
        print('b. Eulerian Path or Circuit Exists.')
    else:
        print('b. Eulerian Path or Circuit does not Exist.')
def printHamiltonPath(graph):
    try:
        hamiltonPath = networkx.algorithms.tournament.hamiltonian_path(graph) # get hamilton path
        print('c. Hamilton Path: ', )
        print('\t', end='')
        for x in hamiltonPath:
            if x != 'a':
                print(' ->', end=' ')
            print(x, end='') # print hamilton path if exists
    except:
        print('c. Hamilton Path does not exist.') # else print exception
def printGraphTraversals(graph):
    print('\nd. Graph Traversals (source node = a)')
    print('Breath First Search: visualized using matplotlib')
    BFStree = networkx.bfs_tree(graph, 'a') # create BFS tree
    networkx.draw(BFStree, with_labels=True)
    plot.show() # visualize BFS tree
    print('Depth First Search: visualized using matlplotlib')
    DFStree = networkx.dfs_tree(graph, 'a') # create DFS tree
    networkx.draw(DFStree, with_labels=True)
    plot.show() # visualize DFS tree
    input('\npress enter key to return...')

# main
# initialize graph
graphTwo = networkx.DiGraph()
# creating nodes a - f 
nodeName = 'a'
for x in range(6):
    graphTwo.add_node(nodeName)
    nodeName = chr(ord(nodeName)+1)
# creating edges
graphTwo.add_edge('a','b')
graphTwo.add_edge('a','f')
graphTwo.add_edge('b','c')
graphTwo.add_edge('b','d')
graphTwo.add_edge('b','f')
graphTwo.add_edge('c','b')
graphTwo.add_edge('c','b')
graphTwo.add_edge('c','e')
graphTwo.add_edge('d','c')
graphTwo.add_edge('d','e')
graphTwo.add_edge('e','a')
graphTwo.add_edge('e','b')
graphTwo.add_edge('e','f')
graphTwo.add_edge('f','a')
graphTwo.add_edge('f','d')
graphTwo.add_edge('f','e')


# menu system
while True:
    os.system('cls')
    printMenu()
    option = input('\nOption: ')
    if option == '1':
        printNodeList(graphTwo)
    elif option == '2':
        printEdgeList(graphTwo)
    elif option == '3':
        printCountConnectedComponents(graphTwo)
    elif option == '4':
        printConnectedComponents(graphTwo)
    elif option == '5':
        printIncidenceMatrix(graphTwo)
    elif option == '6':
        printNodeDegrees(graphTwo)
    elif option == '7':
        printCountEdges(graphTwo)
    elif option == '8':
        visualizeGraph(graphTwo)
    elif option == '9':
        printIsEulerian(graphTwo)
        printHasEulerPath(graphTwo)
        printHamiltonPath(graphTwo)
        printGraphTraversals(graphTwo)

    # fix 3 4 and degree option