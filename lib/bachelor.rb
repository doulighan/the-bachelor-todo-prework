require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.values.each do |contestants|
    contestants.each do |info|
      if info["occupation"] == occupation
        return info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  i = 0;
  data.values.each do |contestants|
    contestants.each do |info|
      i += 1 if info["hometown"] == hometown
    end
  end
  i
end

def get_occupation(data, hometown)
  data.values.each do |contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_sum = 0.0
  num_contestants = 0.0
  data[season].each do |contestant|
    age_sum += contestant["age"].to_i
    num_contestants += 1
  end
  (age_sum / num_contestants).round(0)
end
