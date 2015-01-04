STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

$coordinates = []

$N = gets.to_i # the number of points used to draw the surface of Mars.
$N.times do
    # LAND_X: X coordinate of a surface point. (0 to 6999)
    # LAND_Y: Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.
#    $LAND_X, $LAND_Y = gets.split(" ").collect {|x| x.to_i}
#    $coordinates << Array.new([$LAND_X, $LAND_Y])
end

# game loop
loop do
    # HS: the horizontal speed (in m/s), can be negative.
    # VS: the vertical speed (in m/s), can be negative.
    # F: the quantity of remaining fuel in liters.
    # R: the rotation angle in degrees (-90 to 90).
    # P: the thrust power (0 to 4).
    $X, $Y, $HS, $VS, $F, $R, $P = gets.split(" ").collect {|x| x.to_i}
    
    if $VS < -35
        $R = 4
    end
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
    STDERR.puts 
    
    puts "-0 " + $R.to_s # R P. R is the desired rotation angle. P is the desired thrust power.
end
