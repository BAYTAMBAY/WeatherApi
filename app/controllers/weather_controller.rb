class WeatherController < ApplicationController
  def api
    require 'json'
    @sehir=params[:search]
    if @sehir == nil
      uri = URI("https://api.openweathermap.org/data/2.5/weather?q=Kahramanmaras&appid=59c84841fc945dc51dcf4178705e2d5b")
    else
      uri = URI("https://api.openweathermap.org/data/2.5/weather?q=+#{@sehir}+&appid=59c84841fc945dc51dcf4178705e2d5b")
    end
    
    @a = Net::HTTP.get(uri)
    @json = JSON.parse (@a)
    
  end


end
