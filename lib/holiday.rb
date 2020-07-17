require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  all_supplies=[]
  holiday_hash.each do |season,holidays|
     holidays.each do |holiday_name,supplies|
       supplies.each do |supply_name|
         all_supplies << supply_name
      end
    end
 end
 all_supplies
end

def all_supplies_in_holidays(holiday_hash)
  output = ""
  holiday_hash.each do |season,holidays|
    output = ""
    output << season.to_s.capitalize + ":" 
    puts output
    output = ""
    holidays.each do |holiday_name,supplies|
       holiday_name_array = holiday_name.to_s.split("_")
       holiday_name_array.collect do |element|
          element.capitalize!
       end
     output <<  "  " + holiday_name_array.join(" ") + ": "
     
     supplies.each_with_index do |supply_name,index|
     if index < supplies.length - 1
          output << supply_name + ", "
        else
          output << supply_name + " "
        end
     end
     puts output.chomp(" ")
     output = ""
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_name_array = []
  holiday_hash.each do |season,holidays|
     holidays.each do |holiday_name,supplies|
       if supplies.include?("BBQ")
         holiday_name_array << holiday_name
       end
     end
  end
  holiday_name_array
end







