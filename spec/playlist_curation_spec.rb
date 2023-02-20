require "playlist_curation"

RSpec.describe Goodsongs do
    it "In the event no tracks added" do
        nosongs = Goodsongs.new
        nosongs.addtrack("")
        expect(nosongs.seeplaylist).to eq [""]
    end 
    it "adds the name of a single song to a list for later perusal" do
        dancemix = Goodsongs.new
        result = dancemix.addtrack("YouWouldn'tLikeMeWhenI'mAngry")
        expect(result).to eq ["YouWouldn'tLikeMeWhenI'mAngry"]
    end 
    it "adds the name of multiple songs to a list for later perusal" do
        dancemix = Goodsongs.new
        dancemix.addtrack("YouWouldn'tLikeMeWhenI'mAngry")
        dancemix.addtrack("Strange Overtones")
        dancemix.addtrack("Bridgeport Lathe")
        expect(dancemix.seeplaylist).to eq ["YouWouldn'tLikeMeWhenI'mAngry", "Strange Overtones", "Bridgeport Lathe"]
    end 
end 