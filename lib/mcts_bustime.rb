require 'rest_client'
require 'nokogiri'

class MctsBustime
  attr_accessor :api_key

  def initialize(api_key, debug=false)
    @api_key = api_key
    @debug = debug
    @url = 'http://realtime.ridemcts.com/bustime/api/v1/'
  end


  def call(method, params = {})
    api_url = @url + method
    uri_params = URI.encode_www_form params
    response = RestClient::Request.execute(:method => :get, :url => api_url+"?key=#{@api_key}&#{uri_params}", :timeout => -1)

    response
  end

  def method_missing(method, *args)
    method = method.to_s
    call("#{method}", *args)
  end

  def request_whois
    response = RestClient::Request.execute(:method => :get, :url => 'http://realtime.ridemcts.com/bustime/api/v1/getvehicles?key=GxV35GtQW6Zw3HEE6x5QeJdZR&rt=21&format=json', :timeout => -1)
    puts "#{@url}/gettime?key=#{@api_key}"
  end
  # Your code goes here...
end
