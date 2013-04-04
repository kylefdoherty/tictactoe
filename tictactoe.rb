##### Instructions #####

# 1) You can use whatever language you'd like (we suggest Ruby or Javascript).
# 2) Use whatever coding environment you'd like (jsfiddle.net is a good place to start for a browser-based Javascript editor). You can even use TextEdit and just write code. Your choice.
# 3) Use as many online resources as you like, but the challenge is meant to be completed alone, so please don't take any outside help.
# 4) On the front-end, there is no need to make it pretty. We are looking to see how you approach solving it and breaking it down.



##### Steps ######

#1 - create a board that can hold Xs and Os - hash or array


		# I'm probably going to need to use an array inside an array or hash inside an array or something like this 
		# Looking into how I can print out an empty board with nested array

	

		@board = [[' ', '|', ' ', '|', ' '], ['--','--','--','--','-'], [' ', '|', ' ', '|', ' '], ['--','--','--','--','-'], [' ', '|', ' ', '|', ' ']]


	def show_board
		@line_width = 50
		puts @board[0].join.center(@line_width) #remembered the part in Chris Pine's book about visual formatting 
		puts @board[1].join.center(@line_width)
		puts @board[2].join.center(@line_width)
		puts @board[3].join.center(@line_width)
		puts @board[4].join.center(@line_width)
	end

		
	



#2 - puts the board empty board and ask player 1 to make first move 

	

	# def convert input #method to covert players input in appropriate array index
	# 		case input
	# 		when 1
	# 			input = 0
	# 		when 3
	# 			input = 4
	# 		end

	# 	end
		

###### method to add move to board and print board ######
	def addmove(row, col)

		@board[row][col]="X"

		show_board

		# puts @board[0].join.center(@line_width) #remembered the part in Chris Pine's book about visual formatting 
		# puts @board[1].join.center(@line_width)
		# puts @board[2].join.center(@line_width)
		# puts @board[3].join.center(@line_width)
		# puts @board[4].join.center(@line_width) 

	end


		
		show_board

	9.times do 

		puts "Make your move by selecting the row (0-2) and column (0-2)"
		puts "Select the row:"

		row = gets.chomp.to_i

		puts "Please the column:"

		col = gets.chomp.to_i

		addmove(row,col)

	end 



	








	

		
#3 - take players input and add it to the appropriate place on the board (hash)
#4 - puts out the updated board 
#5 - ask player 2 to make second move 
#6 - repeat step 3
#7 - repeat step 4
#8 - ask player 1 to make third move
#9 - repeat step 3 (after get this all down add a step here to check for winner)
#10 - repeat step 4
#11 - ask player 2 to make fourth move
#12 - repeat step 3
#13 - repeat step 4
#14 - ask player 1 to make fifth move 
#15 - repeat step 3
#16 - repeat step 4
#17 - ask player 2 to make sixth move 
#18 - continue with steps until get to 9th move