require 'pry'

class EmailAddressParser

  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    parsed_addresses = @email_addresses.split(/[\s,]+/) #WTF? via https://stackoverflow.com/questions/1835032/regexp-split-string-by-commas-and-spaces-but-ignore-hyphenated-words/1835128#1835128
    parsed_addresses.uniq
  end

end

