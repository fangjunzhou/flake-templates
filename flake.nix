{
  description = "Fangjun's Nix Templates";

  outputs = { self }: {
    templates = {
      cs536 = {
        path = ./cs536;
        description = "UW Madison CS 536 Introduction to PLs and Compilers develop environment flake.";
      };
      cpp = {
        path = ./cpp;
        description = "C++ project flake.";
      };
      rust = {
        path = ./rust;
        description = "Rust project flake.";
      };
      python = {
        path = ./python;
        description = "Python project flake.";
      };
      nodejs = {
        path = ./nodejs;
        description = "NodeJS project flake.";
      };
    };
  };
}
