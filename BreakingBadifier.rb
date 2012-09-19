

def breakingbadify(input, random = false)
  elements = %w{H He Li Be B C N O F Ne Na Mg Al Si P S Cl Ar K Ca Sc Ti V Cr Mn Fe Co Ni Cu Zn Ga Ge As Se Br Kr Rb Sr Y Zr Nb Mo Tc Ru Rh Pd Ag Cd In Sn Sb Te I Xe Cs Ba La Ce Pr Nd Pm Sm Eu Gd Tb Dy Ho Er Tm Yb Lu Hf Ta W Re Os Ir Pt Au Hg Tl Pb Bi Po At Rn Fr Ra Ac Th Pa U Np Pu Am Cm Bk Cf Es Fm Md No Lr Rf Db Sg Bh Hs Mt Ds Rg Uub Uut Uuq Uup Uuh Uus Uuo}

  output = []

  elements.each do |element|
    if input.upcase.include? element.upcase
      output.push input.sub(/(#{element})/i, "[#{element.upcase}]")
    end
  end

  if random then output.shuffle! end

  puts (output.size == 0) ? input : output[0]
  puts output.size
end

breakingbadify("Allen")