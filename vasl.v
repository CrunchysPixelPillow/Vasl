import os as system;

const argument=arguments();

fn main (){
  viewingprovider:=bool(transfer (system.read_file ("data/viewing.txt")!));
  // debug messages \\
  //println ("viewing provider status [true=eza false=ls]: ${viewingprovider}");

  // information \\
  if (argument==['./vasl', 'help']) { // help
    println ("

      ==== information ====
      version (display the vasl version)
      about (information about vasl)
      help (show this help menu)
      list (show the list of installed packages)
      fetch --list (display the avalable packages for installation)
      fetch --toggles (display the togglable settings of vasl)
      fetch --update (pull an updated list of installable packages from the repo)

      ==== installation & removal ====
      remove <package-id> (remove an installed package)
      install <package-id> > (install a package from the vasaline github repo)


      ====  other ====
      toggle <option>


      ") }
  else if (argument==['./vasl', 'list']) { // listing installed packages
    println ("listing packages");
    view ("cashe/", viewingprovider); }
  else if (argument==['./vasl', 'fetch --toggles']) { // configuring light-switchable settings
    println ("
      ==== visual ====
      viewing-provider (config to use the <ls> or <eza> command for viewing installed packages)
      ");
  }
  else if (argument==['./vasl', 'fetch --list']) { // view packages you can install
  }
    // other \\
  else if (argument==['./vasl', 'version']) {
    println ("vasl version beta 1.0"); }
  else { println ("Failed to parse: ${argument}"); }
}

// Options \\
pub fn fetch ()?{
  println(""); }

pub fn transfer (input string) bool {
  if (input.trim_space()=="true"){
    return true }
  else { return false }
}
pub fn view (location string, provider bool)?{
  match provider {
    false { println (system.system ("ls ${location}/")); }
    true { println (system.system ("eza ${location}/")); }
    }
}
