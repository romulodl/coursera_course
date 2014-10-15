use "week_1.sml";

val older_year = is_older((2001,2,3),(2010,3,4)) = true
val newer_year = is_older((2010,2,3),(2001,3,4)) = false
val same_year_older_month = is_older((2001,2,3),(2001,3,4)) = true
val same_year_newer_month = is_older((2001,3,3),(2001,2,4)) = false
val same_year_same_month_older_day = is_older((2001,2,3),(2001,2,4)) = true
val same_year_same_month_newer_day = is_older((2001,2,4),(2001,2,3)) = false

val empty_list = number_in_month([], 2) = 0
val list_1     = number_in_month([(2014,1,2)], 1) = 1
val list_2     = number_in_month([(2014,1,2), (2014,2,1)], 1) = 1
val list_3     = number_in_month([(2014,10,2), (2014,2,1)], 1) = 0
val list_4     = number_in_month([(2014,10,2), (2014,10,1)], 10) = 2
