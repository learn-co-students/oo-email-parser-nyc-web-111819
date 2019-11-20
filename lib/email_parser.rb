class EmailAddressParser
    attr_accessor :data
    def initialize(rawdata)
        @data = rawdata
    end
    def parse
        array = @data
        array2 = array.split(", ")
        array3 = []
        for x in array2
            if !x.include? " "
                array3 << x
            else
                puts x
                array3 << x.split(" ")
            end
        end
        array3.flatten!
        array3.uniq!
        return array3
    end
end