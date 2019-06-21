require 'pry'

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

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands: \n
- help : displays this help message \n
- list : displays a list of songs you can play \n
- play : lets you choose a song to play \n
- exit : exits this program \n"
end

def play(songs)
  puts "Please enter a song name or number:"
  entry = gets.chomp
  songs.each_with_index do |title, index|
    track_number = index + 1
#    binding.pry
    if entry == title 
      puts "Playing #{title}"
      return title
    elsif entry.to_i == track_number
      puts "Playing #{songs[index]}"
      return songs[index]
    elsif entry.to_i >= songs.length
      puts "Invalid input, please try again"
    elsif songs.include?(entry) == false
      puts "Invalid input, please try again"
#    elsif entry.class
#    elsif songs.include?(entry) != true && entry.to_i >= songs.length 
#      puts "Invalid input, please try again"
    end
#  binding.pry
   end
end



def list(songs)
  songs.each_with_index { |title,index| puts "#{index + 1 }. #{title}"}
end


def exit_jukebox
  puts "Goodbye!"
end



def run(songs)
  help
  command = ""
    while command != "exit"
      puts "Please enter a command:"
      command = gets.chomp
#####
      if command == "play"
        play(songs)
      elsif command == "list"
       list(songs)
      elsif command == "help"
        help
      end
#####
    end
    exit_jukebox
end

#run
