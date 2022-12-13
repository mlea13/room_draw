module Stay = struct
  type t = { name : string; days : int }
end

let print_list l to_string =
  List.iter (fun x -> Printf.printf "%s, " (to_string x)) l;
  Printf.printf "\n"

let print_array a to_string =
  Array.iter (fun x -> Printf.printf "%s, " (to_string x)) a;
  Printf.printf "\n"

let knuth_shuffle a =
  Random.self_init ();
  let n = Array.length a in
  let a = Array.copy a in
  for i = n - 1 downto 1 do
    let k = Random.int (i + 1) in
    let x = a.(k) in
    a.(k) <- a.(i);
    a.(i) <- x
  done;
  a

let init_draws stays =
  List.fold_left
    (fun acc { Stay.name; days } -> Array.append acc (Array.make days name))
    (Array.make 0 "") stays

let undup_array a =
  let undup =
    Array.fold_left (fun xs x -> if List.mem x xs then xs else x :: xs) [] a
  in
  List.rev undup

let randomize stays =
  let draws = init_draws stays in
  Printf.printf "Inputs: ";
  print_array draws (fun x -> x);
  let random_draws = knuth_shuffle draws in
  Printf.printf "\nShuffled: ";  
  print_array random_draws (fun x -> x);
  Printf.printf "\n### Results: ";    
  let order = undup_array random_draws in
  print_list order (fun x -> x)
