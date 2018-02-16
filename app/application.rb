class Application

  def call(env)
    resp = Rack::Response.new
    first_space = Time.now.to_s.index(" ")
    second_space = Time.now.to_s.index(" ",11)
    if Time.now.to_s[first_space+1..second_space-1].to_i > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end
