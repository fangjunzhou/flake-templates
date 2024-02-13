{
  description = "Fangjun's Nix Templates";

  outputs = { self }: {
    templates = {
      cs536 = {
        path = ./cs536;
        description = "UW Madison CS 536 Introduction to PLs and Compilers develop environment flake.";
      };
    };
  };
}
