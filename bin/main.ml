open Room_draw

let stays : Stay.t list =
  [
    { name = "Morgan"; days = 1 };
    { name = "Charlie"; days = 1 };
    { name = "Louisa"; days = 1 };
    { name = "Maddy"; days = 1 };
    { name = "Kenny"; days = 1 };
    { name = "Evan"; days = 1 };
    { name = "Julia"; days = 1 };
    { name = "Imma"; days = 1 };
    { name = "Frankie"; days = 1 };
  ]

let () = randomize stays
