# Island Perimeter - Easy

## https://leetcode.com/problems/island-perimeter/

# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  i = 0
  peri = 0

  while i < grid.length
    j = 0

    while j < grid[i].length
      if grid[i][j] == 1
        if i == 0
          peri += 1
          peri += 1 if grid[i][j - 1] == 0 or j == 0
        elsif j == 0
          peri += 1
          peri += 1 if grid[i - 1][j] == 0
        else
          peri += 1 if grid[i][j - 1] == 0
          peri += 1 if grid[i - 1][j] == 0
        end

        peri += 1 if grid[i][j + 1] == nil or grid[i][j + 1] == 0
        peri += 1 if grid[i + 1] == nil or grid[i + 1][j] == 0
      end

      j += 1
    end
    i += 1
  end

  peri
end

p island_perimeter([
  [0,1,0,0],
  [1,1,1,0],
  [0,1,0,0],
  [1,1,0,0]
])
# => 16

p island_perimeter([
  [1]
])
# => 4