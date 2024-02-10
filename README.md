# JSON Parser

## Overview

This project is a simple JSON parser implemented in OCaml using Menhir, a LR(1) parser generator. The purpose of this project is to provide a basic understanding of how to use Menhir to parse JSON syntax.

## Getting Started

### Prerequisites

Ensure you have the following dependencies installed:

- OCaml
- Dune

### Build and Run

Follow these steps to build and run the project:

1. Clone the repository:

   ```bash
   git clone https://github.com/hnrbs/json-parser.git
   cd json-parser
   ```

2. Enter the Nix shell:

   ```bash
   nix-shell
   ```
  
3. Run the example executable:

   ```bash
   dune exec src/main.exe
   ```

## Usage

To use the JSON parser library in your OCaml project, add it as a dependency in your `dune` file. Then, include the library module in your OCaml code:

```ocaml
let json = Json_parser.from_string "..." in
let json = Json_parser.from_file "book.json" in

let open Json_parser.Util in
let title = json |> field "title" |> to_string in  

printf "Title: %s" title
```

## Contributing

If you would like to contribute to the project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Push your branch to your fork.
5. Open a pull request.

## License

This JSON parser library is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
