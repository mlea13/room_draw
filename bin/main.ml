open Room_draw

let stays : Stay.t list =
  [
(*    { name = "Morgan"; days = 1 };
    { name = "Charlie"; days = 1 };
    { name = "Louisa"; days = 1 }; *)
    { name = "Maddy"; days = 9 };
    { name = "Kenny"; days = 3 };
    { name = "Evan"; days = 10 };
    { name = "Julia"; days = 6 };
    { name = "Imma"; days = 10 };
    { name = "Frankie"; days = 4 };
  ]

let () = randomize stays
