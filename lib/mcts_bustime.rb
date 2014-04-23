require 'rest_client'
require 'nokogiri'

class MctsBustime
  attr_accessor :api_key

  def initialize(api_key, debug=false)
    @api_key = api_key
    @debug = debug
    @url = 'http://realtime.ridemcts.com/bustime/api/v1/'
  end

  
  # Your code goes here...
end
