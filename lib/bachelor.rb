def get_first_name_of_season_winner(data, season)
winner = ""
data[season].each do |contestant|
  if contestant["status"] == "Winner"
    winner = contestant["name"].split(" ")[0]
  end
end
  return winner
end

def get_contestant_name(data, occupation)
  whos_job = ""
  data.each do |seasons , contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        whos_job = contestant["name"]
      end
    end
  end
  return whos_job
  # code here
end

def count_contestants_by_hometown(data, hometown)
town_count = 0
  data.each do |seasons , contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        town_count += 1
      end
    end
  end
  return town_count
end

def get_occupation(data, hometown)
  whos_job = ""
  data.each do |seasons , contestants|
    contestants.find do |contestant|
      if contestant["hometown"] == hometown
        whos_job = contestant["occupation"]
      end
    end
  end
  return whos_job
  # code here  # code here
end

def get_average_age_for_season(data, season)

total_contestants = 0
total_years = 0
average_age = 0

  data[season].each do |contestant|
    total_years = total_years + contestant["age"].to_f
    total_contestants += 1
  end

average_age = total_years / total_contestants

return average_age.round

end
