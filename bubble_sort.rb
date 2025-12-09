require 'pry-byebug'
=begin 
Pseudo-Code für Bubble sort

Ziel: 
ein Array sortieren (von der kleinsten zur größten Zahl)

Vorgehen: 
Das Array mehrmals durchgehen und immer wieder eine Zahl mit der danach vergleichen und die Positionen bei bedarf anpassen. 
Falls irgendwann ein durchlauf passiert, in dem keine Anpassung geschieht, ist das Array fertig sortiert

> mit schleife arbeiten
> eine Variable speichern in der festgehalten wird, ob sortiert wurde -> bei jeder neuen runde der Schleife am Anfang auf false setzten

input -> array

each with index:
index mit index+1 vergleichen
falls index+1 kleiner ist als index: 
  -> index +1 an index verschie
=end 

def bubble_sort(input_array)
  sorting = true
  output  = input_array
  while sorting == true do
    sorting = false
    array_position = 0
    while array_position < output.length do
      this_number = output[array_position]
      next_number = output[array_position+1]
      if array_position+1 == output.length
        break
      end
      if next_number < this_number
        output[array_position] = next_number
        output[array_position+1] = this_number
        sorting = true
      end
      array_position += 1
    end
  end
  binding.pry
  output
end

bubble_sort([321, 8, 8532, 4,3,78,2,120, 987660, 1, -4, 27,2])
