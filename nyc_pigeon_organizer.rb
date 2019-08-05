def nyc_pigeon_organizer(data)
  newHash = {}
  data.each {|key, value|
    value.each{|key2, value2|
      value2.each{|name|
        if newHash[name]
          newHash[name][key] << key2
        else
        end
    }
  }
end
