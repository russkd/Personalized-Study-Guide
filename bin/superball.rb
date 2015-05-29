# Create a class Ball.

# Ball objects should accept one argument for "ball type" when instantiated.

# If no arguments are given, ball objects should instantiate with a "ball type" of "regular."

# ball1 = Ball.new
# ball2 = Ball.new "super"
# ball1.ball_type  #=> "regular"
# ball2.ball_type  #=> "super"

class Ball
    attr_accessor :ball_type

    def initialize(input=nil)
        @ball_type = input || "regular"
        # @ball_type =input is another solution for this line.
    end
end

p Ball.new
p Ball.new "super"
