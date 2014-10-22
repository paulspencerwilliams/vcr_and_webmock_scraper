require 'sinatra'
require 'json'
require 'mechanize'

class Scraper < Sinatra::Application
  get '/' do
    status 200
   
    mechanize = Mechanize.new
    page = mechanize.get('http://paulswilliams.me.uk/')

    response = { "title" => page.title }
    return response.to_json
  end
end
