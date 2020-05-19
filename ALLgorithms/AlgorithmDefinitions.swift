//
//  AlgorithmDefinitions.swift
//  Data Processing Algorithms - IOS
//
//  Created by Hasan Efe Özkavcı on 18.05.2020.
//  Copyright © 2020 Hasan Efe Özkavcı. All rights reserved.
//

import Foundation
import UIKit
let Definitions = [
"Stable Matching Problem":
    "In mathematics, economics, and computer science, the stable marriage problem (also stable matching problem or SMP) is the problem of finding a stable matching between two equally sized sets of elements given an ordering of preferences for each element. A matching is a bijection from the elements of one set to the elements of the other set. A matching is not stable if\n\nThere is an element A of the first matched set which prefers some given element B of the second matched set over the element to which A is already matched, and\n\nB also prefers A over the element to which B is already matched.\nIn other words, a matching is stable when there does not exist any match (A, B) which both prefer each other to their current partner under the matching.\nThe stable marriage problem has been stated as follows: \nGiven n men and n women, where each person has ranked all members of the opposite sex in order of preference, marry the men and women together such that there are no two people of opposite sex who would both rather have each other than their current partners. When there are no such pairs of people, the set of marriages is deemed stable.\n\nThe existence of two classes that need to be paired with each other (men and women in this example) distinguishes this problem from the stable roommates problem.",
                   
"MST(Kruskal's Algorithm)": "Kruskal's algorithm is a minimum-spanning-tree algorithm which finds an edge of the least possible weight that connects any two trees in the forest.[1] It is a greedy algorithm in graph theory as it finds a minimum spanning tree for a connected weighted graph adding increasing cost arcs at each step.[1] This means it finds a subset of the edges that forms a tree that includes every vertex, where the total weight of all the edges in the tree is minimized. If the graph is not connected, then it finds a minimum spanning forest (a minimum spanning tree for each connected component).",


"MST(Prim's Algorithm)": "In computer science, Prim's (also known as Jarník's) algorithm is a greedy algorithm that finds a minimum spanning tree for a weighted undirected graph. This means it finds a subset of the edges that forms a tree that includes every vertex, where the total weight of all the edges in the tree is minimized. The algorithm operates by building this tree one vertex at a time, from an arbitrary starting vertex, at each step adding the cheapest possible connection from the tree to another vertex.",

"Breadth First Search": "Breadth-first search (BFS) is an algorithm for traversing or searching tree or graph data structures. It starts at the tree root (or some arbitrary node of a graph, sometimes referred to as a 'search key'[1]), and explores all of the neighbor nodes at the present depth prior to moving on to the nodes at the next depth level.\n\nIt uses the opposite strategy as depth-first search, which instead explores the node branch as far as possible before being forced to backtrack and expand other nodes.[2]\n\nBFS and its application in finding connected components of graphs were invented in 1945 by Konrad Zuse, in his (rejected) Ph.D. thesis on the Plankalkül programming language, but this was not published until 1972.[3] It was reinvented in 1959 by Edward F. Moore, who used it to find the shortest path out of a maze,[4][5] and later developed by C. Y. Lee into a wire routing algorithm (published 1961).[6]",

"Depth First Search": "Depth-first search (DFS) is an algorithm for traversing or searching tree or graph data structures. The algorithm starts at the root node (selecting some arbitrary node as the root node in the case of a graph) and explores as far as possible along each branch before backtracking.\n\nA version of depth-first search was investigated in the 19th century by French mathematician Charles Pierre Trémaux[1] as a strategy for solving mazes.[2][3]",

"Testing Bipartiteness": "An undirected graph G = (V, E) is bipartite if the nodes can be colored red or blue such that every edge has one red and one blue end.",

"Topological Ordering": "Topological sorting for Directed Acyclic Graph (DAG) is a linear ordering of vertices such that for every directed edge uv, vertex u comes before v in the ordering. Topological Sorting for a graph is not possible if the graph is not a DAG.\n\nFor example, a topological sorting of the following graph is “5 4 2 3 1 0”. There can be more than one topological sorting for a graph. For example, another topological sorting of the following graph is “4 5 2 3 1 0”. The first vertex in topological sorting is always a vertex with in-degree as 0 (a vertex with no incoming edges).\n\nTopological Sorting vs Depth First Traversal (DFS):\n\nIn DFS, we print a vertex and then recursively call DFS for its adjacent vertices. In topological sorting, we need to print a vertex before its adjacent vertices. For example, in the given graph, the vertex ‘5’ should be printed before vertex ‘0’, but unlike DFS, the vertex ‘4’ should also be printed before vertex ‘0’. So Topological sorting is different from DFS. For example, a DFS of the shown graph is “5 2 3 1 0 4”, but it is not a topological sorting",

"Ford - Fulkerson Algorithm": "The Ford–Fulkerson method or Ford–Fulkerson algorithm (FFA) is a greedy algorithm that computes the maximum flow in a flow network. It is sometimes called a \"method\" instead of an \"algorithm\" as the approach to finding augmenting paths in a residual graph is not fully specified[1] or it is specified in several implementations with different running times.[2] It was published in 1956 by L. R. Ford Jr. and D. R. Fulkerson.[3] The name \"Ford–Fulkerson\" is often also used for the Edmonds–Karp algorithm, which is a fully defined implementation of the Ford–Fulkerson method.\n\nThe idea behind the algorithm is as follows: as long as there is a path from the source (start node) to the sink (end node), with available capacity on all edges in the path, we send flow along one of the paths. Then we find another path, and so on. A path with available capacity is called an augmenting path."
]
let Algorithms = [
    "Stable Matching Problem": "algorithm stable_matching is\n\tInitialize all m ∈ M and w ∈ W to free\n\twhile ∃ free man m who still has a woman w to propose to do\n\t\tw := first woman on m's list to whom m has not yet proposed\n\t\tif w is free then\n\t\t\t(m, w) become engaged\n\t\telse some pair (m', w) already exists\n\t\t\tif w prefers m to m' then\n\t\t\t\tm' becomes free\n\t\t\t\t(m, w) become engaged\n\t\t\telse\n\t\t\t\t(m', w) remain engaged\n\t\t\tend if\n\t\tend if\n\trepeat",
    
    "MST(Kruskal's Algorithm)": "1. Sort all the edges in non-decreasing order of their weight.\n2. Pick the smallest edge. Check if it forms a cycle with the spanning tree formed so far. If cycle is not formed, include this edge. Else, discard it.\n3. Repeat step#2 until there are (V-1) edges in the spanning tree.",
    
    "MST(Prim's Algorithm)": "1. Initialize a tree with a single vertex, chosen arbitrarily from the graph.\n2. Grow the tree by one edge: of the edges that connect the tree to vertices not yet in the tree, find the minimum-weight edge, and transfer it to the tree.\n3. Repeat step 2 (until all vertices are in the tree).",
    
    "Breadth First Search": "4",
    "Depth First Search": "5",
    "Testing Bipartiteness": "6",
    "Topological Ordering": "7",
    "Ford - Fulkerson Algorithm": "8"
]

