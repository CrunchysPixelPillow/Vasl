
# Not ready for production yet, only the visual and informative information are functional
## About
------------

Vasl is a small package manager made for Vasaline-Solus's core extensions and community packages. Vasl is created using Vlang and the standard-library with the goal of just working without the need for elegence


## Usage
```
./vasl <argument>
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
```

# Additional Information
---------
Required Dependcies: Vlang 0.5.1 or likewise with ls or eza installed
