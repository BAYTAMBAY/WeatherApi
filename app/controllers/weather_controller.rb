class WeatherController < ApplicationController
  def api
    require 'json'
    @sa="kahramanmaraş"
    @sa=params[:search]
    uri = URI("https://api.openweathermap.org/data/2.5/weather?q=+#{@sa}+&appid=59c84841fc945dc51dcf4178705e2d5b")
    @a = Net::HTTP.get(uri)
    @json = JSON.parse (@a)
    
  end


end
