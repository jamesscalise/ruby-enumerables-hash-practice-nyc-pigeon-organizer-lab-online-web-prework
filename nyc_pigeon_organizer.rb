def nyc_pigeon_organizer(data)
  newHash = {}
  data.each {|key, value|
    value.each{|key2, value2|
      value2.each{|name|
        if newHash[name] and newHash[name][key]
        else if newHash[name]  
         
        else
          newHash[name] = {}
          newHash[name][key] = []
          newHash[name][key] << key2.to_s
        end
    }
  }
  }
end
