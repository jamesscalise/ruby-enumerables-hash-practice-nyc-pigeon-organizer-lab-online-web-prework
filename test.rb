pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  newHash = {}
  data.each {|key, value|
    value.each{|key2, value2|
      value2.each{|name|
        if newHash[name] and newHash[name][key]
           newHash[name][key] << key2.to_s
        elsif newHash[name]  
            newHash[name][key] = []
            newHash[name][key] << key2.to_s
        else
          newHash[name] = {}
          newHash[name][key] = []
          newHash[name][key] << key2.to_s
        end
    }
  }
  }
  return newHash
end

newData = nyc_pigeon_organizer(pigeon_data)
print newData