# frozen_string_literal: true

module ArtistsHelper
  def display_artist(song)
    # binding.pry
    if !song.artist.nil?
      link_to song.artist.name, artist_path(song.artist)
    elsif song.artist.nil?
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
