STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

$N = gets.to_i # the number of points used to draw the surface of Mars.
$N.times do
    # LAND_X: X coordinate of a surface point. (0 to 6999)
    # LAND_Y: Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.
    $LAND_X, $LAND_Y = gets.split(" ").collect {|x| x.to_i}
end

max_thrust = 4
g = 3.711
max_deceleration = max_thrust - g

# game loop
loop do
    # HS: the horizontal speed (in m/s), can be negative.
    # VS: the vertical speed (in m/s), can be negative.
    # F: the quantity of remaining fuel in liters.
    # R: the rotation angle in degrees (-90 to 90).
    # P: the thrust power (0 to 4).
    $X, $Y, $HS, $VS, $F, $R, $P = gets.split(" ").collect {|x| x.to_i}
    
    ticks_until_impact = $Y  / ($VS + 0.01)
    time_to_decelerate = ($VS + 30) / max_deceleration # don't know why +30 and not +40 - perhaps because I'm calculating for the current tick rather than the next one.
    
    
    if  time_to_decelerate <= ticks_until_impact
        $R = 4
    end

 #       if $VS < -35 && $VS > -39
 #           $R = 2
 #       elsif $VS == -39
 #           $R = 3
 #       elsif $VS <= -40
 #           $R = 4
 #       end

    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
    STDERR.puts max_deceleration
    
    puts "0 " + $R.to_s # R P. R is the desired rotation angle. P is the desired thrust power.
end
