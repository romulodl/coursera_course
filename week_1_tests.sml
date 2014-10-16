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

val empty_lists_1 = number_in_months([],[2,3,4]) = 0
val empty_lists_2 = number_in_months([(2012,2,28)],[]) = 0
val empty_lists_3 = number_in_months([],[]) = 0
val list_1s       = number_in_months([(2012,2,28),(2013,12,1),(2011,10,31),(2011,11,28)],[2,3,4]) = 1
val list_2s       = number_in_months([(2012,2,28),(2013,12,1),(2011,12,31),(2011,4,28)],[2,3,4]) = 2
val list_3s       = number_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3
val list_4s       = number_in_months([(2012,12,28),(2013,12,1),(2011,12,31),(2011,12,28)],[2,3,4]) = 0

val empty_dates_in_month  = dates_in_month([],2) = []
val zero_dates_in_month   = dates_in_month([(2012,3,12), (2012,3,4)],2) = []
val one_dates_in_month    = dates_in_month([(2012,2,12), (2012,3,4)],2) = [(2012,2,12)]
val two_dates_in_month    = dates_in_month([(2012,2,12), (2012,2,4)],2) = [(2012,2,12), (2012,2,4)]

val empty_dates_in_months_1 = dates_in_months([],[2,3,4]) = []
val empty_dates_in_months_2 = dates_in_months([(2013,2,3)],[]) = []
val empty_dates_in_months_3 = dates_in_months([],[]) = []
val zero_dates_in_months    = dates_in_months([(2012,5,12), (2012,5,4)],[2,3,4]) = []
val one_dates_in_months     = dates_in_months([(2012,2,12), (2012,5,4)],[2,3,4]) = [(2012,2,12)]
val two_dates_in_months     = dates_in_months([(2012,2,12), (2012,4,4)],[2,3,4]) = [(2012,2,12), (2012,2,4)]

val get_empty = get_nth([], 2) = ""
val get_hi    = get_nth(["hi", "there", "how", "are", "you"], 1) = "hi"
val get_there = get_nth(["hi", "there", "how", "are", "you"], 2) = "there"
val get_you   = get_nth(["hi", "there", "how", "are", "you"], 5) = "you"

val may      = date_to_string((2013, 5, 18))  = "May 18, 2013"
val june     = date_to_string((2013, 6, 1))   = "June 1, 2013"
val december = date_to_string((2013, 12, 10)) = "December 10, 2013"

val returns_zero  = number_before_reaching_sum(10, [])          = 0
val returns_one   = number_before_reaching_sum(2, [1,2,3,4,5])  = 1
val returns_two   = number_before_reaching_sum(5, [1,2,3,4,5])  = 2
val returns_three = number_before_reaching_sum(10, [1,2,3,4,5]) = 3
val returns_four  = number_before_reaching_sum(11, [1,2,3,4,5]) = 4
val returns_five  = number_before_reaching_sum(16, [1,2,3,4,5]) = 5
