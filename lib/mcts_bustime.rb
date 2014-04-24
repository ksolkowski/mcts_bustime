require 'rest_client'
require 'nokogiri'
require 'yaml'
require 'active_support/core_ext/hash/conversions'

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
    puts api_url+"?key=#{@api_key}&#{uri_params}" if @debug == true
    response = RestClient::Request.execute(:method => :get, :url => api_url+"?key=#{@api_key}&#{uri_params}", :timeout => -1)
    if !(params[:format] && params[:format].include?("json"))
      doc = Nokogiri::XML.parse(response)
      hash = Hash.from_xml(doc.to_s)
    else
      hash = YAML.load(response)
    end
    
    hash
  end

  def method_missing(method, *args)
    method = method.to_s
    call("#{method}", *args)
  end
end
