# dubstep.rb

def song_decoder(song)
  song.gsub("WUB", " ").squeeze(" ").strip
end

p song_decoder("QWUBQQWUBIWUBWWWUBJOPJPBRH")