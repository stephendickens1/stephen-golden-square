# As a user
# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.


class Goodsongs
    def initialize
    @playlist = []
    end

    def addtrack(track)
       return @playlist << track
    end 

    def seeplaylist
        songlist = @playlist
        return songlist
    end
end 