# Data Structure and Algorithm
**Linear Data Structure**
> Data structure which the data elements are placed sequentially or linearly

- Static (fixed memory size)
  - Array

- Dynamic (size not fixed, support update of data)
  - Linked List
  - Stack
  - Queue

**Non-Linear Data Structure**
> Data structure which the data elements are not placed sequentially or linearly thus cannot be traversed in single run
- Tree
- [Graph](#graph)

  - [Breadth First Search/Traversal](#breadth-first-searchtraversal-bfs)

## Graph
A data structure consisting of vertices (nodes) and edges (lines/arcs) connecting two nodes in the graph. 
> Formally denoted as G(E, V) which represents a graph G with set of vertices V and edges E.
- **Vertices:** vertex or nodes, labeled or unlabelled
- **Edges:** lines or arcs connecting two nodes, labeled or unlabelled, directed or undirected

```
💡 Real life usage 💡

- Used to represent networks, eg. paths in city, telephone, circuit or social network
```

### Breadth First Search/Traversal (BFS)
Similar to tree but graphs may contains cycles. To avoid visiting same node more than once, we keep extra information of visited nodes.

**Implementation**
- Declare queue and insert starting vertex
- Initialize visited array, mark starting vertex as visited
- Repeat until queue becomes empty
  - Remove first vertex of queue
  - Mark it as visited
  - Insert all unvisited neighbours of vertex into queue
  
**Complexity**
- Time complexity: O(V+E)
- Auxiliary Space: O(V)

**Related questions on LeetCode**
1. [Q841 Keys and Rooms](./Graph/BreadthFirstSearch/Q841KeysAndRooms.md)
