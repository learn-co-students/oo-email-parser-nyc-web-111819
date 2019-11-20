# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser

    attr_accessor :email_address

    def initialize(email_address)
        @email_address = email_address
    end 

    def parse
        new_emails=@email_address.split(/\,|\ /).delete_if {|w| w.size < 2}
        final_emails = []
        new_emails.each do |email|
            if final_emails.include?(email) == false 
                final_emails << email
            end 
        end 
        final_emails
    end 

end 