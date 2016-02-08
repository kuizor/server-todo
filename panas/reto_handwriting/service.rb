
require "rest-client"
require_relative 'marshall.rb'
TOKEN_PAIR=['T1VHRJWSE9MTWBWF', 'CXA7HNKB01HN4MP7']
class Service
  attr_accessor :response,:titles_test_array,:pdf_response

  def initialize
  	@response = JSON.parse(RestClient.get "https://T1VHRJWSE9MTWBWF:CXA7HNKB01HN4MP7@api.handwriting.io/handwritings")
  end

  def titles_test(id)
  	@titles_test_array= "https://T1VHRJWSE9MTWBWF:CXA7HNKB01HN4MP7@api.handwriting.io/render/pdf?handwriting_id=#{id}&text=muestra%20de%20la%20fuente"
	@titles_test_array
  end

  def render(filename,params,type)
  	link="https://api.handwriting.io/render/#{type}"
	uri = URI(link)
	uri.query = URI.encode_www_form(params)
	req = Net::HTTP::Get.new(uri)
	req.basic_auth(TOKEN_PAIR[0], TOKEN_PAIR[1])
	res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) {|http|
	http.request(req)
	}
	cad='files/'
	cad+=filename
	@archive=Marshall.new
	@archive.serialized(cad,res.body)
  end

  def send_email(params)
	RestClient.post "https://api:key-3602474268674bc4dfe399a1b10713cb"\
	 "@api.mailgun.net/v3/sandbox1c220de0c3cf49c29f1aad35270d589e.mailgun.org/messages",
	 params
  end
end



