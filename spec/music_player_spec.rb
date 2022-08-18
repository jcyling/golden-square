require "music_player"

RSpec.describe MusicPlayer do
  it "adds track" do
    player = MusicPlayer.new
    player.add("Blackbird")
    result = player.list
    expect(result).to eq ["Blackbird"]
  end

  it "adds multiple track" do
    player = MusicPlayer.new
    player.add("Blackbird")
    player.add("Happy birthday")
    result = player.list
    expect(result).to eq ["Blackbird", "Happy birthday"]
  end

  it "returns empty array with no input" do
    player = MusicPlayer.new
    result = player.list
    expect(result).to eq []
  end
end