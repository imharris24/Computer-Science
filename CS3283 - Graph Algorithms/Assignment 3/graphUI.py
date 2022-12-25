# MUHAMMAD HARRIS - BCS203193
# Graph Algorithms - Assignment 3

import networkx
import pandas
import matplotlib.pyplot
import openpyxl
from tkinter import *
import tkinter.filedialog

# init graph
mainGraph = networkx.Graph()

# init fileDirectory
fileDirectory = 'NULL'

# function to select excel file and create graph from it
def selectExcelFile():
    global fileDirectory
    global statusLabel
    global mainGraph
    fileTypes = (('excel files', '*.xlsx'), ('All files', '*.*'))
    fileDirectory = tkinter.filedialog.askopenfilename(title='Select excel file to create graph', initialdir='/', filetypes=fileTypes)
    statusLabel.config(text='STATUS: excel file selected', fg='#2ce20f')
    excelData = pandas.read_excel(fileDirectory)
    for i in range(0, len(excelData)):
        mainGraph.add_edge(excelData.iloc[i, 0], excelData.iloc[i, 1])

# function to visualize the graph
def visualizeGraph():
    networkx.draw(mainGraph, pos=networkx.spring_layout(mainGraph), with_labels=True, node_size=1000, node_color='#49be25')
    matplotlib.pyplot.show()

# create window that displays degree of nodes
def displayNodeDegree():

    # create node list
    nodeList = mainGraph.nodes()

    # create new window
    new = Tk()
    new.title('Degree of Nodes')
    new.geometry('560x520')
    new.resizable(False, False)
    new.iconbitmap(r'D:\Project\GraphAlgorithmAssignment\assets\favicon.ico')

    # null label
    nullLabel3 = Label(new, text='\n')
    nullLabel3.pack()

    textLabel = Label(new, text='DEGREE OF ALL NODES')
    textLabel.pack()

    # null label
    nullLabel4 = Label(new, text='\n')
    nullLabel4.pack()

    # display nodes along with degree
    for n in nodeList:
        label = Label(new, text=n + ': ' + str(mainGraph.degree(n)))
        label.pack()

# create window that displays degree centrality of nodes
def displayDegreeCentrality():
    # create node list
    nodeList = mainGraph.nodes()

    # create new window
    new = Tk()
    new.title('Degree Centrality of Nodes')
    new.geometry('560x520')
    new.resizable(False, False)
    new.iconbitmap(r'D:\Project\GraphAlgorithmAssignment\assets\favicon.ico')

    # null label
    nullLabel3 = Label(new, text='\n')
    nullLabel3.pack()

    textLabel = Label(new, text='Degree Centrality')
    textLabel.pack()

    # null label
    nullLabel4 = Label(new, text='\n')
    nullLabel4.pack()

    # get degree centrality as a dictionary
    degreeCentrality = networkx.degree_centrality(mainGraph)

    # display nodes along with degree centrality
    for n in nodeList:
        label = Label(new, text=n + ': ' + str(degreeCentrality[n]))
        label.pack()

# create window that displays betweenness centrality of nodes
def displayBetweennessCentrality():
    # create node list
    nodeList = mainGraph.nodes()

    # create new window
    new = Tk()
    new.title('Betweenness Centrality of Nodes')
    new.geometry('560x520')
    new.resizable(False, False)
    new.iconbitmap(r'D:\Project\GraphAlgorithmAssignment\assets\favicon.ico')

    # null label
    nullLabel3 = Label(new, text='\n')
    nullLabel3.pack()

    textLabel = Label(new, text='Betweenness Centrality')
    textLabel.pack()

    # null label
    nullLabel4 = Label(new, text='\n')
    nullLabel4.pack()

    # get betweenness centrality as a dictionary
    betweennessCentrality = networkx.betweenness_centrality(mainGraph)

    # display nodes along with degree centrality
    for n in nodeList:
        label = Label(new, text=n + ': ' + str(betweennessCentrality[n]))
        label.pack()

# create window that displays closeness centrality of nodes
def displayClosenessCentrality():
    # create node list
    nodeList = mainGraph.nodes()

    # create new window
    new = Tk()
    new.title('Closeness Centrality of Nodes')
    new.geometry('560x520')
    new.resizable(False, False)
    new.iconbitmap(r'D:\Project\GraphAlgorithmAssignment\assets\favicon.ico')

    # null label
    nullLabel3 = Label(new, text='\n')
    nullLabel3.pack()

    textLabel = Label(new, text='Closeness Centrality')
    textLabel.pack()

    # null label
    nullLabel4 = Label(new, text='\n')
    nullLabel4.pack()

    # get closeness centrality as a dictionary
    closenessCentrality = networkx.closeness_centrality(mainGraph)

    # display nodes along with degree centrality
    for n in nodeList:
        label = Label(new, text=n + ': ' + str(closenessCentrality[n]))
        label.pack()

# main

# creating UI
root = Tk()
root.geometry('560x520')
root.resizable(False, False)

# add favicon to window
root.iconbitmap(r'D:\Project\GraphAlgorithmAssignment\assets\favicon.ico')

# adding window title
root.title('Graph Algorithms - Assignment 3 - MUHAMMAD HARRIS - BCS203193')

# null label
nullLabel0 = Label(root, text='\n')
nullLabel0.pack()

# creating label
headingLabel = Label(root, text='GRAPH ALGORITHMS')
headingLabel.pack()

# null label
nullLabel = Label(root, text='\n')
nullLabel.pack()

# file frame
fileFrame = LabelFrame(root, text='Select excel file to create graph', padx=10, pady=10)
fileFrame.pack()

# select file
selectFileButton = Button(fileFrame, text='Open File', command=selectExcelFile)
selectFileButton.pack()

# status label for excel file
statusLabel = Label(fileFrame, text='STATUS: no file selected', bd=1, relief=SUNKEN, padx=3, fg='#E2260f')
statusLabel.pack(pady=10)

# null label
nullLabel2 = Label(root, text='\n')
nullLabel2.pack()

# creating menu frame
menuFrame = LabelFrame(root, text='Options for graph', padx=10, pady=10, labelanchor='n')
menuFrame.pack(padx=10, pady=10)

# creating button for visualizing graph
button_visualizeGraph = Button(menuFrame, text='Visualize Graph', command=lambda: visualizeGraph(), padx=22.5)
button_visualizeGraph.pack(pady=5)

# creating button for degree of nodes
button_nodeDegrees = Button(menuFrame, text='Degree of Nodes', padx=18.5, command=lambda: displayNodeDegree())
button_nodeDegrees.pack(pady=5)

# creating button for degree centrality
button_degreeCentrality = Button(menuFrame, text='Degree Centrality', padx=16.5, command=lambda: displayDegreeCentrality())
button_degreeCentrality.pack(pady=5)

# creating button for betweenness centrality
button_betweennessCentrality = Button(menuFrame, text='Betweenness Centrality', command=lambda: displayBetweennessCentrality())
button_betweennessCentrality.pack(pady=5)

# creating button for closeness centrality
button_closenessCentrality = Button(menuFrame, text='Closeness Centrality', padx=9, command=lambda: displayClosenessCentrality())
button_closenessCentrality.pack(pady=5)

# run UI
root.mainloop()
