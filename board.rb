require_relative 'card'

class Board
    def initialize(n)
			@grid = Array.new(n) { Array.new(n, ' ')}
      @size = n * n
    end

		def [](pos)
			row, col = pos
			@grid[row][col]
		end

		def []=(pos, val)
			row, col = pos
			@grid[row][col] = val
		end
		
		def populate
			
		end

		def render # => print method
			#should print current board
			@grid.each do |row|
				puts row.join(' ')
			end
		end
		
		def won?
			# return @grid.all? == ' '
			if @grid.each do |row|
				row.all? { |ele| ele != ' ' }
			end
		end
end