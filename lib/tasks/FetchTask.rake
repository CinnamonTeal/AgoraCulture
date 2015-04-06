# go to the json api
# load the markets data into the database

task :fetch => [:environment] do 
  temp = HTTParty.get('https://data.cityofnewyork.us/resource/j8gx-kc43.json')
  parsed_json = JSON.parse(temp.body)
  parsed_json.each do |hash|

  	accepts_ebt = hash["facilityaddinfo"].match(/No EBT Accepted/) ? false : true

  	Market.create(:name => hash["facilityname"], :address => hash["facilitystreetname"], :zipcode => hash["facilityzipcode"], :latitude => hash["latitude"], :longitude => hash["longitude"], :accepts_ebt => accepts_ebt)
   end
end