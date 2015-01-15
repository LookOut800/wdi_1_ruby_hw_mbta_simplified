mbta = [
["haymarket_g" , "government_center" ,"park_st" ,"boylston" ,"arlington" , "copley" ],
["alewife", "davis", "porter", "harvard", "central", "kendall", "park_st", "south_st" ],
["north_station", "park_st", "state_st", "downtown_crossing", "chinatown", "tufts_med_ctr"]]


def distance_same_line (line, start, stop)
  (line.index(start) - line.index(stop)).abs
end

puts distance_same_line(mbta[1],"alewife", "kendall")


def distance_other_line (start_line, end_line, start_stop, end_stop)
  first_line = (start_line.index("park_st") - (start_line.index(start_stop))).abs
  second_line = (end_line.index("park_st") - (end_line.index(end_stop))).abs
  distance = first_line + second_line + 1
end

puts distance_other_line(mbta[0], mbta[2], "haymarket_g", "north_station")
