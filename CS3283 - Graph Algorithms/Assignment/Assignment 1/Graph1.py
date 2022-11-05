import networkx
import matplotlib.pyplot as plot
import numpy
import os

# function to print main menu
def printMainMenu():
    print("----------MENU----------")
    print("0. edit graph")
    print("1. display node list of graph")
    print("2. display edge list of graph")
    print("3. print components of the graph")
    print("4. count connected components of graph")
    print("5. display incidence matrix of graph")
    print("6. display node degrees")
    print("7. count number of edges")
    print("8. visualize the graph")
    print("9. Check if:")
    print("\ta. Euler circuit exist or not and Graph is Eulerian")
    print("\tb. Euler path exists or not")
    print("\tc. Hamilton Path")
    print("\td. Perform Depth First and Breadth First Traversal on graph\n")

# function to print graph menu
def printGraphMenu():
    print("-----GRAPH MENU-----")
    print("1. insert node")
    print("2. insert edge")
    print("3. delete node")
    print("4. delete edge")
    print("5. return to main menu\n")

# function to add node to graph
def addNode(graph):
    nodeN = input("\nenter node N: ")
    graph.add_node(nodeN) # creating node N
    input("node N created in graph...")

# function to add edge to graph
def addEdge(graph):
    nodeU = input("\nenter node U: ")
    nodeV = input("enter connected node V: ")
    graph.add_edge(nodeU, nodeV) # creating edger between node U and V
    input("edge created between node U and node V...")

# function to delete node from graph
def deleteNode(graph):
    nodeN = input("\nenter node to delete: ")
    graph.remove_node(nodeN) # remove node N
    input("node n has been deleted...")

# function to delete edge from graph
def deleteEdge(graph):
    nodeU = input("\nenter node U: ")
    nodeV = input("\nenter node V: ")
    graph.remove_edge(nodeU, nodeV) # remove edge between node U and node V
    input("edge between node U and node V has been deleted...")

# function to display node list
def displayNodeList(graph):
    os.system('cls')
    print('node list of graph:\n', graph.nodes()) # print node list of graph
    input('press any key to return...')

# function to display edge list
def displayEdgeList(graph):
    os.system('cls')
    print('edge list of graph:\n', graph.edges()) # print edge list of graph
    input('press any key to return...')

# function to display count of connected components
def displayConnectedComponentCount(graph):
    os.system('cls')
    print('connected component of graph (Count): ', networkx.number_connected_components(graph)) # display connected components count
    input('press any key to return...')

# function to display incidence matrix
def displayIncidenceMatrix(graph):
    os.system('cls')
    incidenceMatrix = networkx.to_numpy_matrix(graph) 
    print('indcidence matrix:\n', incidenceMatrix) # print incidence matrix
    input('press any key to return...')

# function to display degree of a node
def getDegree(graph):
    os.system('cls')
    nodeN = input('enter nodeN: ')
    print('degree of node N: ', graph.degree(nodeN))
    input('press any key to return...')

# function to display number of edges
def getNumberOfEdges(graph):
    os.system('cls')
    print('number of edges in the graph: ', networkx.number_of_edges(graph))
    input('press any key to return...')

# function to visualize graph
def visualizeGraph(graph):
    os.system('cls')
    networkx.draw(graph)
    plot.show()
    input('\npress any key to return...')

# function that tells whether graph is euler or not
def isEuler(graph):
    if networkx.isEuler(graph):
        print('a. graph is euler graph.')
    else:
        print('a. graph is not euler graph.')

# function that tells whether graph has eulerian path or not
def hasEulerPath(graph):
    if networkx.has_eulerian_path(graph):
        print('b. eulerian path or circuit exits.')
    else:
        print('b. eulerian path or circuit does not exit.')

# function that prints hamilton path
def hamiltonPath(graph):
    print('c. hamilton path: ', networkx.algorithms.tournament.hamiltonian_path(graph))


# main
graph = networkx.Graph() # intitalizing graph
while True:
    os.system("cls")
    printMainMenu()
    option = input("option: ")
    # 0. edit graph menu
    if option == '0':
        while True:
            os.system('cls')
            printGraphMenu()
            graphOption = input("option: ")
            # 1. insert node
            if graphOption == '1':
                addNode(graph)
                break
            # 2. insert edge
            elif graphOption == '2':
                addEdge(graph)
                break
            # 3. delete node
            elif graphOption == '3':
                deleteNode(graph)
                break
            # 4. delete edge
            elif graphOption == '4':
                deleteEdge(graph)
                break
            # 5. exit
            elif graphOption == '5':
                break                
    # 1. display node list of graph
    elif option == '1':
        displayNodeList(graph)
    # 2. display edge list of graph
    elif option == '2':
        displayEdgeList(graph)
    # 3. count connected components of the graph
    elif option == '3':
        displayConnectedComponentCount(graph)
    # 4. print connected components of the graph
    elif option == '4':
        visualizeGraph(graph)
    # 5. Display Incidence Matrix of a Graph
    elif option == '5':
        displayIncidenceMatrix(graph)
    # 6. Display the Nodes degrees
    elif option == '6':
        getDegree(graph)
    # 7. Count Number of Edges
    elif option == '7':
        getNumberOfEdges(graph)
    # 8. visualize the graph
    elif option == '8':
        visualizeGraph(graph)
    # 9. Check if:
        # a. Euler circuit exist or not and Graph is Eulerian
        # b. Euler path exists or not
        # c. Hamilton Path
        # d. Perform Depth First and Breadth First Traversal on graph
    elif option == '9':
        os.system('cls')
        isEuler(graph)
        hasEulerPath(graph)
        
    else:
        continue


