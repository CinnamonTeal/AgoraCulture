# go to the json api
# load the markets data into the database

task :fetch => [:environment] do 
  temp = HTTParty.get('https://data.cityofnewyork.us/resource/j8gx-kc43.json')
  parsed_json = JSON.parse(temp.body)
  parsed_json.each do |hash|

  	accepts_ebt = hash["facilityaddinfo"].match(/No EBT Accepted/) ? false : true

  	if City.all.nil?
  		City.create(:name => hash["facilitycity"])
  	else
  		city_names = City.all.each_with_object([]){|city, array| array << city.name}
  		City.create(:name => hash["facilitycity"]) if !city_names.include?(hash["facilitycity"])
  	end

  	if Market.all.nil?
  		Market.create(:name => hash["facilityname"], :address => hash["facilitystreetname"], :zipcode => hash["facilityzipcode"], :latitude => hash["latitude"], :longitude => hash["longitude"], :accepts_ebt => accepts_ebt)
  	else
  		market_names = Market.all.each_with_object([]){|market, array| array << market.name}

  		id = 0

  		City.all.each {|city| id = city.id if city.name == hash["facilitycity"]}

  		Market.create(:name => hash["facilityname"], :address => hash["facilitystreetname"], :zipcode => hash["facilityzipcode"], :latitude => hash["latitude"], :longitude => hash["longitude"], :accepts_ebt => accepts_ebt, :city_id => id) if !market_names.include?(hash["facilityname"])
  	end

  end
end