require 'pry'

holiday_hash=
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
     output <<  holiday_name_array.join(" ") + ": "
     
     supplies.each_with_index do |supply_name,index|
     if index < supplies.length - 1
          output << supply_name + ", "
        else
          output << supply_name + " "
        end
     end
     puts output
     output = ""
    end
  end
end
all_supplies_in_holidays(holiday_hash)