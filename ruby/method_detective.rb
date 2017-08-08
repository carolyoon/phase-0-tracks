# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
=> “InVeStIgAtIoN”


"zoom".squeeze
=> “zoom”

"enhance".center(15)
=> "    enhance    "

"Stop! You’re under arrest!".upcase
=> "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(9, " suspects")
=> "the usual suspects"

" suspects".insert(0, "the usual ")
=> "the usual suspects"

"The case of the disappearing last letter".chomp("r")
=> "The case of the disappearing last lette"

"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"

"The mystery of the missing first letter".reverse.chop.reverse
=> "The mystery of the missing first letter"

"The mystery of the missing first letter".slice!(1, 38)
=> "The mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze 
=> "Elementary, my dear Watson!"

"Elementary,    my   dear        Watson!".split.join(" ")
=> "Elementary, my dear Watson!"

"z".replace("122 233")
=> 122 233
a = "z".ord
a.to_s.insert(3, " 223")

"How many times does the letter 'a' appear in this string?".count("a")
=> 4
