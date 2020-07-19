def second_supply_for_fourth_of_july(holiday_supplies)
   {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter].each do |holiday, decorations|
    decorations << supply
  end
end

def add_supply_to_memorial_day(holiday_supplies, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  
  holiday_supplies[season][holiday_name] = supply_array
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_supplies)
  array = holiday_supplies[:winter].map do |holiday, supply|
  supply
end
array.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
    puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}"
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_supplies.map do |season, holiday|
    holiday.map do |holiday, supply|
      holiday if supply.include?("BBQ")
    end
  end.flatten.compact
end