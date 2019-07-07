
require "pry"
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
puts "I accept these commands:"
puts "help- provides a list of commands"
puts "play- plays the chosen song"
puts "list- provides a list of available songs"
puts "exit- leaves the application "
end 

def list(songs)
  puts songs
end
list(songs)


def play(user_response)
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

puts "Please enter a song name or number between 1-9:"
user_response = gets.chomp
int = user_response.to_i 
if int == 0 
  puts "now playing #{user_response}"
elsif int != 0 
  puts "now playing #{songs[int]}"
else 
  puts "invalid entry"
end

end
play("The Cults - Abducted")

