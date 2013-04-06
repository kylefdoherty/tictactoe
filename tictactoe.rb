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

		

###### method to add move to board and print board ######
	def addmove(move, player)

		#convert the inputs of the player to valid moves on the board
	row = ""
	col = ""
		
		case move
		when 1
			row = 0
			col = 0
		when 2
			row = 0
			col = 2
		when 3 
			row = 0
			col = 4
		when 4
			row = 2
			col = 0 
		when 5
			row = 2
			col = 2
		when 6
			row = 2
			col = 4
		when 7
			row = 4
			col = 0
		when 8
			row = 4
			col = 2
		when 9
			row = 4
			col = 4
		end   


		#add if statement to check if that array index already has a value.  if it does don't replace it and ask the player to make a different move

		if @board[row][col] #already has a value 
			puts "Sorry you can't make that move.  Please make a different move:"
				new_move = gets.chomp.to_i
				addmove(new_move,player)
		else
			@board[row][col]= player

		end

		show_board


	end


		
		show_board #shows the board at the start of the game

	9.times do |x|

		player = ""

		if x % 2 == 0
			puts "Player One make your move:"
			player = "X"
		else
			puts "Player Two make your move:"
			player = "O"
		end


		move = gets.chomp.to_i

		addmove(move, player)

	end 



	








	

		
