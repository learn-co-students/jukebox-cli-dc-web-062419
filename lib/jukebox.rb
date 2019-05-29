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

require 'pry'

def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  binding.pry
  if songs.include?(selection) 
    binding.pry
    puts "Playing #{selection}"
  elsif   songs.include?(songs[selection - 1])
  binding.pry
    puts "Playing #{songs[selection - 1]}"
  else
    puts "Invalid input, please try again"
  end  
  
end






