class MusicLibraryController

  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

  def call
    input = ""

    while input != "exit"
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      input = gets.chomp
    end

    if input == "list songs"
      list_songs
    elsif input == "list artists"
      list_artists
    elsif input == "list genres"
      list_genres
    elsif input == "list artist"
      list_artist
    elsif input == "list genre"
      list_genre
    elsif input == "play song"
      play_song
    end

  end

  def list_songs
    Song.all.sort {|a,b| a.name <=> b.name}.each_with_index{|song, index| puts "#{index + 1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"}
  end

  def list_artists
    Artist.all.sort {|a,b| a.name <=> b.name}.each_with_index{|artist, index| puts "#{index + 1}. #{artist.name} - #{artist.song.name} - #{artist.genre.name}"}
  end

  def list_genres
  end

  def list_artist
  end

  def list_genre
  end

  def play_song
  end




end
