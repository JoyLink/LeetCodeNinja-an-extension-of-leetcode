https://leetcode.com/problems/perfect-rectangle/

Given N axis-aligned line segment in 1 dimension where N > 0, determine
 if theyy all together form an exact cover of a line region..

Each rectangle is represented as a left point and a 
right point. For example, a unit square is represented 
as [1,2]. (coordinate of left point is 1 and
 right point is  2).




class Solution(object):
    def isPerfectLineSegmentCover(self, rectangles):
        """
        :type rectangles: List[List[int]]
        :rtype: bool
        """
        q = []
        currentRight = rectangles[0][0]
        for rec in rectangles:
            currentRight = min(currentRight, rec[0])
            q.add((rec[0], rec))
        q.sort()
        while(len(q)):
            top = q.pop(0)
            if top[0] != currentRight:
                return False
            else:
                currentRight = top[1][1]
        return true 
 

