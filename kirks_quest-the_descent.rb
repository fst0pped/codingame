STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

$mountains = Hash.new
# game loop
loop do
    $mountains.clear
    $MN = 0
    $SX, $SY = gets.split(" ").collect {|x| x.to_i}
    8.times do
        $MH = gets.to_i # represents the height of one mountain, from 9 to 0. Mountain heights are provided from left to right.
        $mountains[$MN] = $MH
        $MN += 1
    end
    
    $tallest = $mountains.sort_by{|number, height| height}.reverse.first
    
    if $SX == $tallest.first
        $action = "FIRE"
    else
        $action = "HOLD"
    end
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
    STDERR.puts $mountains, $SX, $tallest
    
    puts $action # either:  FIRE (ship is firing its phase cannons) or HOLD (ship is not firing).
end
