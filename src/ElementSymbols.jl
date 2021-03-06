module ElementSymbols

export element_symbol, zahl

const element_symbols = [
    "H", "He", "Li", "Be",  "B",  "C",  "N",  "O",  "F", "Ne",
   "Na", "Mg", "Al", "Si",  "P",  "S", "Cl", "Ar",  "K", "Ca", 
   "Sc", "Ti",  "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", 
   "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr",  "Y", "Zr", 
   "Nb", "Mo", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", 
   "Sb", "Te",  "I", "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd", 
   "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", 
   "Lu", "Hf", "Ta",  "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", 
   "Tl", "Pb", "Bi", "Po", "At", "Rn", "Fr", "Ra", "Ac", "Th", 
   "Pa",  "U", "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", 
   "Md", "No", "Lr", "Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds",
   "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og"
   ]

function element_symbol(zahl::Integer)
    if zahl == 0
        return "n"
    elseif zahl > 0 && zahl <= length(element_symbols)
        return element_symbols[zahl]
    else
        return "X"
    end
end

zahl(symbol::AbstractString) = indexin([symbol], element_symbols)[begin]

end # module
