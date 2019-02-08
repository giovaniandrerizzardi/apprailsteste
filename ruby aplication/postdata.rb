require 'net/http'
require 'uri'
require 'json'

temperatura = 30 + rand(10)
humidade = 20 + rand(20)
tempo  = Time.now.strftime("%d/%m/%Y %H:%M")

puts "adicionando temperatura/humidade/tempo:", temperatura , "/",humidade, "/",tempo,";"

uri = URI.parse("http://localhost:8000/adaptor/resources/29841a03-c714-4a51-a386-546bcd5589ad/data")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/json"
request.body = JSON.dump({
  "data" => {
    "teste" => [
      {
        "temperature" => temperatura,
        "humidity" => humidade,
        "timestamp" => tempo
      }
    ]
  }
})

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

# response.code
# response.body