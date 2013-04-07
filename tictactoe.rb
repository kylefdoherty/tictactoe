

	@board = [[' ', '|', ' ', '|', ' '], ['--','--','--','--','-'], [' ', '|', ' ', '|', ' '], ['--','--','--','--','-'], [' ', '|', ' ', '|', ' ']]


	def show_board  #shows the updated board in terminal
		line_width = 50
		puts @board[0].join.center(line_width) #remembered the part in Chris Pine's book about visual formatting 
		puts @board[1].join.center(line_width)
		puts @board[2].join.center(line_width)
		puts @board[3].join.center(line_width)
		puts @board[4].join.center(line_width)
	end

	def convert_move move #converts player's move to corresponding array index

		@row = ""
		@col = ""
		
		case move
		when 1
			@row = 0
			@col = 0
		when 2
			@row = 0
			@col = 2
		when 3 
			@row = 0
			@col = 4
		when 4
			@row = 2
			@col = 0 
		when 5
			@row = 2
			@col = 2
		when 6
			@row = 2
			@col = 4
		when 7
			@row = 4
			@col = 0
		when 8
			@row = 4
			@col = 2
		when 9
			@row = 4
			@col = 4
		end  

	end

	def possible_move(move, player)

		convert_move move

		if @board[@row][@col] == " "
			@board[@row][@col]= player
		else
			puts "Sorry you can't make that move.  Please make a different move:"
			new_move = gets.chomp.to_i
			possible_move(new_move, player)	
		end
	end

	def valid_move(move, player)
		if move.between?(1,9)
			possible_move(move,player)
		else
			puts "sorry your move must be between 1-9.  Please make a new move."
			move = gets.chomp.to_i
			valid_move(move, player)
		end
	end
		


##### Game Starts ######
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

		valid_move(move, player) 
		
		 puts "your valid move is #{move}"

		#possible_move(move, player)

		show_board
	end



	








	

		
