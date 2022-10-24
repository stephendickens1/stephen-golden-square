class GrammarStats
    def initialize
        @trueresult = []
        @falseresult = []
    end 

    def check(text)
        if text.start_with?(/\A[A-Z]/) && (text.end_with?(".") || text.end_with?("?") || text.end_with?("!"))
            @trueresult << "true"
            return true
        else 
            @falseresult << "false"
            return false
        end
    end 

    def percentage_good
        # returns as an integer the percentage of texts checked so far that passed
        # the check defined in the check method. Thenumber 55 presents 55%.
        # true / (true+false) * 100
        truecount = @trueresult.length
        falsecount = @falseresult.length
        totalcount = truecount + falsecount
        return (truecount*100)/totalcount
    end
end

mytest = GrammarStats.new
mytest.check("this is a test")
mytest.check("This is a test.")
mytest.check("This is a test, too!")
mytest.check("This is also a test?")
mytest.check("This is a test")

puts mytest.percentage_good