require 'pry'


# holiday_supplies = 
#   {
#     :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }


  def second_supply_for_fourth_of_july(holiday_hash)
   return holiday_hash[:summer][:fourth_of_july][1]
  end
  
  
   
 


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do|holiday, supplies|
  supplies << supply
  end
end

 



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
return holiday_hash
end
 

def all_winter_holiday_supplies(holiday_hash)
  
    holiday_hash[:winter].collect do |holiday,supplies| 
  
   supplies
  end.flatten 
end



def all_supplies_in_holidays(holiday_hash)
  
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"  
    
    holidays.each do |holiday, supplies|
   
    array = holiday.to_s.split("_")
    holiday_array = array.collect {|word|word.capitalize }
    holiday_capitalize = holiday_array.join(" ")
                puts "  #{holiday_capitalize}: #{supplies.join(", ")}"  
    end
  end
end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
 
  holiday_hash.map do|season, holidays|
    holidays.map do |event, supplies|
      if supplies.include?("BBQ")
      event
    end
  end
end.flatten.compact
end







