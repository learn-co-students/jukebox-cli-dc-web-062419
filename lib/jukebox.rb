songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
  
end



def list(songs)
  songs.each do |song|
    puts "#{songs.index(song) + 1}. #{song}"
  end
end



def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  if songs.include?(selection) 
    puts "Playing #{selection}"
  elsif   selection.to_i > 0 && songs.include?(songs[selection.to_i - 1])
    puts "Playing #{songs[selection.to_i - 1]}"
  else
   puts "Invalid input, please try again"
  end  
  
end


def exit_jukebox
    puts "Goodbye"
end





def run(songs)

  help
  
  puts "Please enter a command:"
  command = gets.downcase.strip
  
  while command != "exit"
  
  case command
  when "list"
    list(songs)
   puts "Please enter a command:"
   command = gets.downcase.strip
  when "play"
    list(songs)
     play(songs)
   puts "Please enter a command:"
  command = gets.downcase.strip
  when "help"
    help
   puts "Please enter a command:"
   command = gets.downcase.strip
 else 
   puts "#{command} is not a valid command. Please enter play, list, help, or exit."
  command = gets.downcase.strip
  end

end
exit_jukebox
end



