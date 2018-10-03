require 'sinatra'

get '/' do
  content_type :json
  {message: "Hello, world."}.to_json
end
