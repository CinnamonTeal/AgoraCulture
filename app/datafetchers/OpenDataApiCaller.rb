class OpenDataApiCaller

 def initialize
   @market_data = JSON.load(open("https://data.cityofnewyork.us/resource/j8gx-kc43.json"))
 end

end