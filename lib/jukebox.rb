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

def list(songs_array)
  puts "1. Phoenix - 1901
  2. Tokyo Police Club - Wait Up
  3. Sufjan Stevens - Too Much
  4. The Naked and the Famous - Young Blood
  5. (Far From) Home - Tiga
  6. The Cults - Abducted
  7. Phoenix - Consolation Prizes
  8. Harry Chapin - Cats in the Cradle
  9. Amos Lee - Keep It Loose, Keep It Tight"
end

def play(songs_array)
  puts "Please enter a song name or number:"
  user_song_input = gets.chomp

  songs_array.each_with_index do |song, index|
    song_number = index +=1
    if song == user_song_input
      puts "Playing #{song}"
    elsif song_number.to_s == gets.chomp
    puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
  puts "Please enter a command:"
  user_response = gets.chomp
    if user_response == "help"
      help
    elsif user_response == "list"
      list(songs)
    elsif user_response == "play"
      play(songs)
    elsif user_response == "exit"
      exit_jukebox
      break
    end
  end
end