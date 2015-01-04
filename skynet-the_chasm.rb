STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

$R = gets.to_i # the length of the road before the gap.
$G = gets.to_i # the length of the gap.
$L = gets.to_i # the length of the landing platform.

# game loop
loop do
    $S = gets.to_i # the motorbike's speed.
    $X = gets.to_i # the position on the road of the motorbike.
    
    if $R-1 == $X
        $action="JUMP"
    elsif $R+$G <= $X || $S > $G+1
        $action="SLOW"
    elsif $S == $G+1
        $action="WAIT"
    else
        $action="SPEED"
    end
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
    STDERR.puts $G, $R, $X
    
    puts $action # A single line containing one of 4 keywords: SPEED, SLOW, JUMP, WAIT.
end
