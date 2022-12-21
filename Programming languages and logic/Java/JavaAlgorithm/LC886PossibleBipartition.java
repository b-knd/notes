// We want to split a group of n people (labeled from 1 to n) into two groups of any size. 
//Each person may dislike some other people, and they should not go into the same group.

// Given the integer n and the array dislikes where dislikes[i] = [ai, bi] indicates that the person labeled ai does not like the person labeled bi, 
//return true if it is possible to split everyone into two groups in this way.

// Example 1:

// Input: n = 4, dislikes = [[1,2],[1,3],[2,4]]
// Output: true
// Explanation: group1 [1,4] and group2 [2,3].
// Example 2:

// Input: n = 3, dislikes = [[1,2],[1,3],[2,3]]
// Output: false
// Example 3:

// Input: n = 5, dislikes = [[1,2],[2,3],[3,4],[4,5],[1,5]]
// Output: false

class Solution {
    public boolean possibleBipartition(int n, int[][] dislikes) {
        //keeping dislike preference in a matrix
        boolean[][] dislikeGraph = new boolean[n][n];
        for(int[] edge: dislikes){
            dislikeGraph[edge[0]-1][edge[1]-1] = true;
            dislikeGraph[edge[1]-1][edge[0]-1] = true;

        }
        
        //group stands for grouping for the particular person, 0 for unassigned, 1 and -1 for the bipartition
        int[] groups = new int[n];
        for(int i = 0; i < groups.length; i++){
            if(groups[i] == 0 && !grouping(i, 1, groups, dislikeGraph)){
                return false;
            }
        }
        return true;
    }

    public boolean grouping(int index, int group, int[] groups, boolean[][] dislikeGraph){
        if(groups[index] != 0){
            //being group correctly
            return groups[index] == group;
        }

        //have not been assigned to a group
        //assign to group, check with dislike if there is any conflict
        groups[index] = group;
        for(int i = 0; i < groups.length; i++){
            if(dislikeGraph[index][i] && !grouping(i, -group, groups, dislikeGraph)){
                return false;
            }
        }
        return true;
    }
}
