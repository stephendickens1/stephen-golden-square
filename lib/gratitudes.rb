class Gratitudes
    def initialize
        @gratitudes = []
    end

    def add(gratitude)
        @gratitudes.push(gratitude)
    end 

    def format
        formatted = "Be grateful for: "
        formatted += @gratitudes.join(", ")
    end
end

testing = Gratitudes.new
testing.add(7)
testing.add(8)
puts testing.format