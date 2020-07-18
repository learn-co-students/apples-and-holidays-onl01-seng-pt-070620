require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
        supplies << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, supplies|
    supplies << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
    return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    winter_supplies << supplies
  end
  return winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_hash|
    puts "#{season.to_s.capitalize!}:"
      season_hash.each do |holiday_name, supply_array|
        puts "  #{holiday_name.to_s.split("_").map{|word|word.capitalize}.join(" ")}: #{supply_array.join(", ")}"
    
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, season_hash|
    season_hash.map do |holiday_name, supply_array|
      if supply_array.include?("BBQ")
        holiday_name
      end
    end
  end.flatten.compact
end  






