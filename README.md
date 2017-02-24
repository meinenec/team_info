#HOTS Logs Team Finder
Sinatra app which pulls team names from a file, queries hotslogs, and places the results in a webpage.

##Running
To run, call `ruby team_finder.rb` and access the results at `localhost:4567`

Get a specific team at `localhost:4567/table/[filename]` or, navigate to `localhost:4567/table[opponents]` to pull data from all teams listed in `teams/opponent_list.txt`

##Opponent List
Add teams to opponent list with any case and spaces. The only requirements are that the file name is lowercase, uses underscores for spaces, and ends in '.txt'
