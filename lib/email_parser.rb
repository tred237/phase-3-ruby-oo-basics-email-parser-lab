# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
    attr_reader :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        parsed_emails = @emails.split(/(,| )/)
        return_parse = []

        parsed_emails.each do |e|
            if !return_parse.include?(e) && e.include?("@")
                return_parse.push(e)
            end
        end
        return_parse
    end
end

list = EmailAddressParser.new("john@doe.com person@somewhere.org, john@doe.com this@")
list.parse