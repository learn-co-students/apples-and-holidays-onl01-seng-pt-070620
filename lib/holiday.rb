require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  
  # given that holiday_hash looks like this:
  
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
   
  # return the second element in the 4th of July array
  
  holiday_supplies[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
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
   
   holiday_supplies.each do |season,holiday|
       if season == :winter
         holiday.each do |new_holiday, value| 
         value << supply
       end 
     end 
   

 end
end


def add_supply_to_memorial_day(holiday_supplies, supply)
  
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
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
  
holiday_supplies[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply_array)
  
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
   
   holiday_supplies[season][holiday_name] = supply_array

   
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_supplies)
  # return an array of all of the supplies that are used in the winter season
  
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

holiday_supplies[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_supplies)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
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

  holiday_supplies.each do |season,data|

    puts "#{season.to_s.capitalize!}:"
    
      data.each do |holiday,supply|
        
        puts "  #{holiday.to_s.split("_").map {|x| x.capitalize!}.join(" ")}: #{supply.join(", ")}"
        
        #  new_holiday = []
        #    holiday_array.each do |single_holiday|
         #     new_holiday << single_holiday.capitalize!
         #   end 
         #     holiday = new_holiday.join(", ")
       # supply = supply.join(", ")
      end 
    end
end

def all_holidays_with_bbq(holiday_supplies)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
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
  
  supply_bbq = []
  
  holiday_supplies.each do |season,data|

    data.each do |holiday,supply|
      if supply.include?("BBQ")
         supply_bbq.push(holiday)
      end
    end
  end
  supply_bbq
end







