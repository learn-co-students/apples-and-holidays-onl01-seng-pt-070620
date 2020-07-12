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
  # return the second element in the 4th of July array

  holiday_hash.map do |k, v|
      if k == :summer
        v.map do |khash,vhash|
          return vhash[1]
        end
      end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.map do |k,v|
    if k == :winter
      v.map do |khash,vhash|
        vhash << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.map do |k,v|
    if k == :spring
      v.map do |khash,vhash|
        vhash << supply

      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash[:"#{season}"] = {"#{holiday_name}": supply_array}

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.collect do |k,v|
  puts "#{k}:".capitalize
  v.each do |khash,vhash|

    puts "  " + khash.to_s.split("_").each{|thing| thing.capitalize!}.join(" ") + ": #{vhash.join(", ")}"

  end
end
end

def all_holidays_with_bbq(holiday_hash)
myArray = []
  holiday_hash.collect do |k,v|
    v.collect do |khash,vhash|
      if vhash.include? "BBQ"

      myArray << khash

      end

    end

  end
  myArray -= [nil, '']
end
