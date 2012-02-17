cities = {
  "AP" => "Hyderabad",
  "UP" => "Lucknow"
}

cities["MP"] = "Bhopal"

def find_city(map, state)
  if map.include? state
    map[state]
  else
    "not found"
  end
end

puts find_city(cities, "AP")