require 'uri'
require 'net/http'
require 'json'

url = URI("https://imdb8.p.rapidapi.com/auto-complete?q=forrest gump")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = Rails.application.credentials.fetch(:movies_api)[:api_key]
request["X-RapidAPI-Host"] = 'imdb8.p.rapidapi.com'

response = http.request(request)
body = response.read_body

# Parse the JSON response
data = JSON.parse(body)

# Extract the actors from the response
actors = data["d"][0]["s"]

# Print the actors
puts actors