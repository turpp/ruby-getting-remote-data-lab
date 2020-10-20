# Write your code here
require 'json'
require 'net/http'
require 'open-uri'


class GetRequester

    def initialize(url)
        @url = url
    end

    # def get_response_body
    #     uri=URI.parse(@url)
    #     response = Net::HTTP.get_response(@url)
    #     response.body

    # end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
      end 

    #   def program_school
    #     # we use the JSON library to parse the API response into nicely formatted JSON
    #       programs = JSON.parse(self.get_programs)
    #       programs.collect do |program|
    #         program["agency"]  
    #       end
    #     end 
      

    def parse_json
        array=[]
        data = JSON.parse(self.get_response_body)
        data.collect do |data|
           data
        end


    end
binding.pry


end
