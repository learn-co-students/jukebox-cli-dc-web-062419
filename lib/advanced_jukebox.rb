def help()
  puts [
    "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
  ]
end

def list(my_songs)
  my_keys = my_songs.keys
  for i in Array(0...my_keys.length)
    puts "#{i+1}. #{my_keys[i]}"
  end
end

def play(my_songs)
  puts "Please enter a song name:"
  song_choice = gets.chomp
  #while 1==1
    if my_songs.keys.any?(song_choice)
      system "open #{my_songs[song_choice]}"
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

def run(my_songs)
  command = ''
  while 1 == 1 do
    puts "Please enter a command:"
    command = gets.chomp
    if command == "help"
      help()
    elsif command == "list"
      list(my_songs)
    elsif command == "play"
      play(my_songs)
    elsif command == "exit"
      exit_jukebox()
      break
    else
      puts "Invalid command."
    end
  end
end
