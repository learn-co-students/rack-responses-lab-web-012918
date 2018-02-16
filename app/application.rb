class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.new(Time.now.year, Time.now.month, Time.now.day, 12, 0, 0)

    if Time.now < t
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
