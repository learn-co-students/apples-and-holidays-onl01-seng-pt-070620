require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
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
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
   array = []
   holiday_hash[:winter].map do |holiday, supplies|
      array << supplies
  end
  array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
      puts "#{season}:".capitalize
      holidays.each do |holiday, supplies|
          holi = holiday.to_s.gsub(/_/, ' ')
          final_holi = holi.split.each {|x| x.capitalize!}
          holiday = final_holi.join(' ')
          supplies_string = ""
          supplies_string << supplies.join(", ")
          puts "  " + "#{holiday}: " + "#{supplies_string}"
          end
      end
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday_names|
      holiday_names.each do |holiday, supplies|
          if supplies.include?("BBQ")
              array << holiday
          end
      end
  end
  array
end






