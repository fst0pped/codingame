# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.


$N = gets.to_i # the number of temperatures to analyse
if $N == 0
    puts "0"
else
    $TEMPS_array = []
    $temps_vs_diff = {}
    $TEMPS = gets.chomp # the N temperatures expressed as integers ranging from -273 to 5526
    $TEMPS_array = $TEMPS.split(" ").collect {|x| x.to_i}

# takes each temperature, calculates the difference between temp and 0 as a positive integer and stores that in a hash with temp
    $TEMPS_array.each do |temp|
        if temp < 0
            $temps_vs_diff[temp] = (0 - temp)
        elsif temp > 0
            $temps_vs_diff[temp] = 0 - temp * -1
        else
            $temps_vs_diff[temp] = 0
        end
    end

    # select key/value pairs from the $temps_vs_diff hash where differences are smallest
    # if there is more than one record (e.g. a positive and a negative) both are used
    # then pick the maximum key value of those results
    # so e.g. if there are two minimum results with an equal difference from 0 (2, -2), the highest is selected
    
    $tvd_min = $temps_vs_diff.select{|k,v| v == $temps_vs_diff.values.min}.max
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."

    STDERR.puts 

    puts $tvd_min[0]
    
end
