fun is_older (pr1 : int*int*int, pr2 : int*int*int) =
  if #1 pr1 < #1 pr2
  orelse (#1 pr1 = #1 pr2 andalso #2 pr1 < #2 pr2)
  orelse (#1 pr1 = #1 pr2 andalso #2 pr1 = #2 pr2 andalso #3 pr1 < #3 pr2)
  then true
  else false

fun number_in_month (xs : (int*int*int) list, y : int) =
  let
    fun count (xs : (int*int*int) list, acc : int) =
      if null xs
      then acc
      else if #2 (hd xs) = y
           then count (tl xs, acc + 1)
           else count (tl xs, acc)
  in
    count (xs, 0)
  end

fun number_in_months (xs : (int*int*int) list, ys : int list) =
  if null ys
  then 0
  else number_in_month (xs, hd ys) + number_in_months(xs, tl ys)

fun dates_in_month (xs : (int*int*int) list, y : int) =
  if null xs
  then []
  else if #2 (hd xs) = y
       then hd xs :: dates_in_month (tl xs, y)
       else dates_in_month (tl xs, y)

fun dates_in_months (xs : (int*int*int) list, ys : int list) =
  if null ys
  then []
  else dates_in_month (xs, hd ys) @ dates_in_months (xs, tl ys)

fun get_nth (xs : string list, y : int) =
  let
    fun iterate (xs : string list, acc : int) =
      if null xs
      then ""
      else if acc = y
           then hd xs
           else iterate (tl xs, acc + 1)
  in
    iterate (xs, 1)
  end

fun date_to_string (x: int*int*int) =
  let
    val months = ["January","February","March","April","May","June","July","August","September","October","November","December"]
  in
    get_nth(months, #2 x) ^ " " ^ Int.toString (#3 x) ^ ", " ^ Int.toString (#1 x)
  end
