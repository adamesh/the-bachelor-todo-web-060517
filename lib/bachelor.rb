require 'pry'
# {
#   "season 30": [
#     {
#       "name":      "Beth Smalls",
#       "age":       "26",
#       "hometown":  "Great Falls, Virginia",
#       "occupation":"Nanny/Freelance Journalist",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Becca Tilley",
#       "age":        "27",
#       "hometown":   "Shreveport, Louisiana",
#       "occupation": "Chiropractic Assistant",
#       "status":     "Eliminated Week 8"
#     }
#   ],
#   "season 29": [
#     {
#       "name":      "Ashley Yeats",
#       "age":       "24",
#       "hometown":  "Denver, Colorado",
#       "occupation":"Dental Assitant",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Sam Grover",
#       "age":        "29",
#       "hometown":   "New York, New York",
#       "occupation": "Entertainer",
#       "status":     "Eliminated Week 6"
#     }
#   ]
# }

def get_first_name_of_season_winner(data, season)
  data[season].each do |contenstant|
    if contenstant['status'] == 'Winner'
      return contenstant['name'].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contenstant_data_array|
    contenstant_data_array.each do  |contestant_data|
      if contestant_data["occupation"] == occupation
        return contestant_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contenstant_data_array|
    contenstant_data_array.each do  |contestant_data|
      if contestant_data["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contenstant_data_array|
    contenstant_data_array.each do  |contestant_data|
      if contestant_data["hometown"] == hometown
        return contestant_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  average_age = 0
  data[season].each do |contenstant|
    age_array << contenstant['age']
  end
  age_array
  age_array.each do |age|
    average_age += age.to_f
  end
  (average_age / age_array.count).round
end
