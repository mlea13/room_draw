open Room_draw

let stays : Stay.t list =
  [
    { name = "Maddy"; days = 3 };
    { name = "Kenny"; days = 1 };
    { name = "Imma"; days = 2 };
  ]

let () = randomize stays
