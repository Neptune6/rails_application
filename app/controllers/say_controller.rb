class SayController < ApplicationController
  def hello
    puts 'Loading up Hello page'
    
    #get the data
    #clean up or process the data
    #finally show it to the view 
    require 'net/http'
  
    url = URI.parse('http://www.omdbapi.com/?apikey=5b181cf4&s=green+book')
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    puts res.body

    
  end

  def goodbye
    puts 'Loading up goodbye page'
  end
  
end
