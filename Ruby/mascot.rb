# Get input from the user:  the cheer
def call_out_cheer
	puts "Call out a cheer"
	cheer = gets.chomp
	return cheer
end

# Determine the mascot's response based on the argument
# passed to the method
def mascot_sign_for(input)
	if input == "RED HOT"
		puts "H-O-T!"
	elsif input == "DO IT AGAIN"
		puts "Go, Fight, Win"
	elsif input == "2 BITS"
		puts "Holler!"
	elsif input == "STOMP YOUR FEET"
		puts "STOMP!"
	else input == ""
		puts "Go Team!"
	end		
end

# Print the argument passed to the method
# def display(response)
# 	p response
# end

# This method will control the flow of the application,
# making use of the other three methods.
def coordinate_cheers
	cheer = ""
  cheer_counter = 0
  until cheer == "GAME OVER"
    cheer = call_out_cheer
    if cheer == ""
      cheer_counter += 1
    else
      cheer_counter = 0
    end
    break if cheer == "GAME OVER" || cheer_counter == 3
    mascot_sign_for(cheer)

  end
end
