require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 # holiday_supplies = {
 # :winter => {
 #   :christmas => ["Lights", "Wreath"],
 #   :new_years => ["Party Hats"]
 # },
#  :summer => {
#    :fourth_of_july => ["Fireworks", "BBQ"]
#  },
#  :fall => {
  #  :thanksgiving => ["Turkey"]
 # },
#  :spring => {
  #  :memorial_day => ["BBQ"]
 # }
#}

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
   holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = { holiday_name => supply_array}
  holiday_hash
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
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supply| 
      supply.each do |ele|
        seasons_str = seasons.to_s
        
        holiday_str = holiday.to_s
        
        seasons_capped = seasons_str.capitalize
        holiday_words = holiday_str.split("_")
        holiday_words.map { |word| word.capitalize }
    
        holiday_capped = holiday_words.join(" ")
        ele_words = ele.split(" ")
        ele_words.map { |word| word.capitalize }
        ele_capped = ele_words.join(" ")
        puts "#{seasons_capped}:"
        puts "#{holiday_capped}: #{ele_capped}" 
      end
    end
  end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







