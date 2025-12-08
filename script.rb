require 'pry-byebug'
 
# Project: Caesar Cipher

# Pseuddo-Code:
# worte in eine array setzen: 
# 
#Array in Ascii Code umwandeln
#alle Buchstaben prüfen:
#Falls in der range von kleinbuchstaben
# kleinbuchstaben verschieben: 
# falls buchstabe ascii < z ascii - number = verschieben (buchstabe + number)
# ansonsten buchstabe am anfang veschieben = asci-a + (number - (asci z - buchstabe)) 


def caesar_cipher(input_string, number)
  kleinbuchstaben_start = "a".ord
  kleinbuchstaben_ende = "z".ord

  grossbuchstaben_start = "A".ord
  grossbuchstaben_ende = "Z".ord
  buchstaben = input_string.split
  buchstaben = buchstaben.map{|wort| wort.chars.map{|buchstabe|buchstabe.ord}}
  buchstaben = buchstaben.map do |wort|
    wort.map do |buchstabe|
      if buchstabe >= kleinbuchstaben_start && buchstabe <= kleinbuchstaben_ende
        if buchstabe <= (kleinbuchstaben_ende -number)
          buchstabe += number
        else
          buchstabe = kleinbuchstaben_start + (number - (kleinbuchstaben_ende - buchstabe)) -1
        end
      elsif buchstabe >= grossbuchstaben_start && buchstabe <= grossbuchstaben_ende
        if buchstabe <= (grossbuchstaben_ende -number)
          buchstabe += number
        else
          buchstabe = grossbuchstaben_start + (number - (grossbuchstaben_ende - buchstabe)) -1
        end
      else 
        buchstabe
      end
    end
    
  end
buchstaben = buchstaben.map { |wort| wort.map {|buchstabe|buchstabe.chr}.join}.join(" ")

end

caesar_cipher("What a string!", 5)

