# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
seahawks <- c(9, 12, 27, 46)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
opponents <- c(17, 9, 33, 18)

# Combine your two vectors into a dataframe called `games`
nfl_scores <- data.frame(seahawks, opponents, stringsAsFactors = FALSE)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
nfl_scores$diff <- c(opponents[1] - seahawks[1], seahawks[2] - opponents[2], opponents[3] - seahawks[3], seahawks[4] - opponents[4])

# Create a new column "won" which is TRUE if the Seahawks won the game
nfl_scores$won <- c(FALSE, TRUE, FALSE, TRUE)

# Create a vector of the opponent names corresponding to the games played
rival_teams <- c("Green Bay Packers", "San Francisco 49ers", "Tennessee Titans", "Indianapolis Colts", "Los Angeles Rams")

# Assign your dataframe rownames of their opponents
rownames(nfl_scores) 

# View your data frame to see how it has changed!
View(nfl_scores)
