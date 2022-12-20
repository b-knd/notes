-- Description:
-- There are n rooms labeled from 0 to n - 1 and all the rooms are locked except for room 0. 
-- Your goal is to visit all the rooms. However, you cannot enter a locked room without having its key.

-- When you visit a room, you may find a set of distinct keys in it. 
-- Each key has a number on it, denoting which room it unlocks, and you can take all of them with you to unlock the other rooms.

-- Given an array rooms where rooms[i] is the set of keys that you can obtain if you visited room i, 
-- return true if you can visit all the rooms, or false otherwise.

-- Example 1:

-- Input: rooms = [[1],[2],[3],[]]
-- Output: true
-- Explanation: 
-- We visit room 0 and pick up key 1.
-- We then visit room 1 and pick up key 2.
-- We then visit room 2 and pick up key 3.
-- We then visit room 3.
-- Since we were able to visit every room, we return true.
-- Example 2:

-- Input: rooms = [[1,3],[3,0,1],[2],[0]]
-- Output: false
-- Explanation: We can not enter room number 2 since the only key that unlocks it is in that room.

-- main function
canVisitAllRooms :: [[Int]] -> Bool
canVisitAllRooms rooms = do 
  -- bfs with starting node as room 0
  let visited = bfs 0 rooms [] []
  -- if all rooms visited true otherwise false
  if length visited == length rooms then True else False


-- helper bfs and update functions
bfs :: Int -> [[Int]] -> [Int] -> [Int] -> [Int]
bfs curr rooms unvisited visited = do 
  -- add current node to visited node
  let updVisited = visited ++ [curr]
  
  -- add neighbouring room of current one to unvisited (if not already visited or already in unvisited list)
  let keys = rooms !! curr 
  let updUnvisited = update unvisited keys updVisited
  
  -- if no next room to visit, return all visited room otherwise, bfs on next room in list
  if length updUnvisited == 0 then updVisited
    else bfs (head updUnvisited) rooms (tail updUnvisited) updVisited

-- function to update room number to unvisited if not already explored or added to unvisited list
update :: [Int] -> [Int] -> [Int] -> [Int]
update unv [] v = unv 
update unv k@(x:xs) v = let updUnv = if elem x v || elem x unv then unv else unv ++ [x] in update updUnv xs v
