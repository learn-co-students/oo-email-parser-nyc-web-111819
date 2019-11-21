# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser
    attr_accessor :email, :emails

    def initialize(email)
        @email = email
    end
    
    def parse
        emails = @email
        array = []
        array << emails.split(/[,*\s]/)
        array = array.flatten.reject(&:empty?).uniq
    end
end
