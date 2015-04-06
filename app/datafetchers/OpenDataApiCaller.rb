class OpenDataApiCaller

 def initialize
   @market_data = JSON.load(open("https://data.cityofnewyork.us/resource/j8gx-kc43.json"))
 end

 # market_data[0].keys => ["facilityaddinfo", "facilitystate", "facilityname", "longitude", "latitude", "facilitystreetname", "facilitycity", "facilityzipcode"] 
 # market_data[0]['facilityname'] => "Brooklyn Borough Hall Greenmarket" 

end