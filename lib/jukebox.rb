def help()
  puts [
    "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
  ]
end

def list(songs)
  for i in Array(0...songs.length)
    puts "#{i+1}. #{songs[i]}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  #while 1==1   #commented out ability to try again w/o another "play" command
    if songs.any?(song_choice)
      puts "Playing #{song_choice}."
      #break
    elsif Array(1..songs.length).any?(song_choice.to_i)
      puts "Playing #{songs[song_choice.to_i - 1]}."
      #break
    else
      puts "Invalid input, please try again."
      #song_choice = gets.chomp
    end
  #end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = ''
  while 1 == 1 do
    puts "Please enter a command:"
    command = gets.chomp
    if command == "help"
      help()
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "exit"
      exit_jukebox()
      break
    else
      puts "Invalid command."
    end
  end
end
