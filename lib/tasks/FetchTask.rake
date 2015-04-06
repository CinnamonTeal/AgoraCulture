# go to the json api
# load the markets data into the database
task :fetch => [:environment] do 
  temp = HTTParty.get('https://data.cityofnewyork.us/resource/j8gx-kc43.json')
  parsed_json = JSON.parse(temp.body) 
end