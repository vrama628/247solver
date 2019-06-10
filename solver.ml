let rec all_less = function
| 1 -> []
| n -> n-1 :: all_less (n-1)

let rec moves = function
| [] -> []
| x::xs ->
    List.map (fun y -> y::xs) (all_less x) @
    xs ::
    List.map (fun ys -> x::ys) (moves xs)

(* didn't feel like importing core just for this *)
let memo_table = Hashtbl.create 247
let () = Hashtbl.add memo_table [] (Some [])

let rec defeat x =
  match Hashtbl.find_opt memo_table x with
  | Some y -> y
  | None ->
      let res = List.find_opt (fun y -> defeat y = None) (moves x) in
      Hashtbl.add memo_table x res;
      res
