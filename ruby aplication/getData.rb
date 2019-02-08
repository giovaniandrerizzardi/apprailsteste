require 'net/http'
require 'uri'


uri = URI.parse("http://localhost:8000/collector/resources/29841a03-c714-4a51-a386-546bcd5589ad/data")
request = Net::HTTP::Post.new(uri)

req_options = {
  use_ssl: uri.scheme == "https",
}


response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
 puts http.request(request).body
 
end


# response.code
# response.body