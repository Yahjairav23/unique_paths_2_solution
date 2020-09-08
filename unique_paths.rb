def unique_paths_with_obstacles(obstacle_grid)
    #find the height of the grid
    m = obstacle_grid.length
    #find the width of the grid
    n = obstacle_grid.first.length
    
    #create an empty array that is the same width as the obstacle_grid, with 0's placed at each index
    result = Array.new(n, 0)

    #check to see if the start point is 0
    #if yes, we will set the zero index of our results array to 1
    result[0] = 1 if obstacle_grid[0][0] == 0
    
    #loop through each row of the obstacle_grid
    for i in 0...m
        #loop through each index column of the row
        for j in 0...n
            #when we are at an index greater than 0, we increment our results array at the index by adding it's value to the previous index's value
            result[j] += result[j-1] if j > 0
            #check to se if this particular index on the Obstacle_grid has a 1 in it's place. If yes, replace our value at the results[j] with 0
            result[j] = 0 if obstacle_grid[i][j] == 1
        end
    end
    

    # return the value for the last index of results array. This tells us all posible routes to the end point.
    result[-1]
end