# Write a function timeForMilkAndCookies (time_for_milk_and_cookies in Ruby) that accepts a Date object, and returns true if it's Christmas Eve (December 24th), false otherwise. Keep in mind Javascript's Date month is 0 based, while Ruby's Date month isn't.
require 'date'

def time_for_milk_and_cookies(d)
  if d.month == 12 && d.mday == 24
    return true
  else
    false
  end
end
