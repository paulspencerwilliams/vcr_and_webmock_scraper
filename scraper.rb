require 'sinatra'
require 'json'

class Scraper < Sinatra::Application
  get '/' do
    status 200

    response = { "title" => "fred" }
    return response.to_json
  end
end
