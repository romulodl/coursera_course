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
