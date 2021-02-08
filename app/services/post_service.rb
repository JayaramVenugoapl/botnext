require 'uri'
require 'net/http'
class PostService
  BASE_URL = "https://jsonplaceholder.typicode.com/posts"
  
  def call
    list_post
  end

  private  
  def list_post
    url = URI(BASE_URL)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    res = https.request(request)
    to_response(res)
  end

  def to_response(res)
    is_success?(res) ? to_h(res.body) : nil
  end
  
  def is_success?(res)
    res.kind_of? Net::HTTPSuccess
  end
  
  def to_h(res)
    JSON.parse(res)
  end
end
