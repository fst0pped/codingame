STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# LX: the X position of the light of power
# LY: the Y position of the light of power
# TX: Thor's starting X position
# TY: Thor's starting Y position
$LX, $LY, $TX, $TY = gets.split(" ").collect {|x| x.to_i}

$x_axis_max = 40
$x_axis_min = 0
$y_axis_max = 18
$y_axis_min = 0

# game loop
loop do
    $E = gets.to_i # The level of Thor's remaining energy, representing the number of moves he can still make.
    if $LX > $TX && $TX < $x_axis_max
        $x_axis_move = "E"
        $TX += 1
    elsif $LX < $TX && $TX > $x_axis_min
        $x_axis_move = "W"
        $TX -= 1
    else
        $x_axis_move = ""
    end
    
    if $LY > $TY && $TY < $y_axis_max
        $y_axis_move = "S"
        $TY += 1
    elsif $LY < $TY && $TY > $y_axis_min
        $y_axis_move = "N"
        $TY -= 1
    else
        $y_axis_move = ""
    end
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
    STDERR.puts $TX.inspect,$x_axis_move.inspect,$TY.inspect,$y_axis_move.inspect
    puts $y_axis_move + $x_axis_move # A single line providing the move to be made: N NE E SE S SW W or NW
end
