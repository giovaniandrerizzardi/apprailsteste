require 'json'
require 'net/http'
class DataProcess


  def getData
    url_param = "/collector/resources/data"
    address = "localhost"
    Net::HTTP.get_response(address, url_param, 8000)
  end

  def discovery(key, address, params)
    rad = (1000*params[:sports_map][:radius].to_i).to_s
    url_param = "/discovery/resources?capability=" + key.downcase + "&lat=" + params[:sports_map][:latitude] + "&lon=" + params[:sports_map][:longitude] + "&radius=" + rad
    Net::HTTP.get_response(address, url_param, 3004)
  end  

end