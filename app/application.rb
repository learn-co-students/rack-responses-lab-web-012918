require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new


    # binding.pry
    if Time.now.hour < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end
    resp.finish
  end
end
