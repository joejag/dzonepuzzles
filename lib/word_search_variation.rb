# http://java.dzone.com/articles/thursday-code-puzzler-13
class WordSearchVariation
    require 'pry'

    def find(grid, word)
        (0..4).each do |x|
            (0..4).each do |y|
                if word_is_at?(x,y)
                    return [x,y]
                end
            end
        end
        raise ArgumentError, "Cannot find the word in the grid"
    end

    def word_is_at?(x,y)
        false
    end

    def horizontal_points(wordgrid, word, x, y)
        (x..word.size-1).map { |xx| [xx,y] }
    end

    def horizontal_backwards_points(grid, word, x, y)
        (word.size+1-x..x).map { |xx| [xx,y] }.reverse
    end

    def vertical_points(grid, word, x, y)
        (y..word.size-1).map { |yy| [x,yy] }
    end

    def vertical_upwards_points(grid, word, x, y)
        (word.size+1-y..y).map { |yy| [x,yy] }.reverse
    end

    def get_points_as_word(points, grid)
        points.map{ |point| grid[point[1]][point[0]]  }.join
    end

end
