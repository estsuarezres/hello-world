#!/usr/bin/env ruby
#Adivina la palabra
#Codigo realizado por Juan Francisco Gonzalez Ramos

puts ' '
puts "\e[31m By Juan FGR !\e[0m" #Color rojo, sobre esto ahi mucha informacion en internet
puts ' '

words = ["casa", "perro", "gato", "jardin"]
botton = rand(4) #genera un valor aleatorio entre 0 y 3

print "Adivina que palabra es la seleccionada por el PC:\n "
print "Opciones: casa, perro, gato. jardin (Dos Oportunidades)\n"

#Utilizacion de un bucle while y sentencias condicionales
i=2
while guess = STDIN.gets and i>0
  i-=1
  guess.chop!
  if guess == words[botton] # compara la cadena introducida con la guardada en la posicion generada anteriormente
    print "Ganaste\n "
    print "La palabra era ", words[botton], ".\n"
    break
  else
    print "Lo siento. Pierdes\n"
  end
  print "Prueba otra vez,(queda ",i+1," intento ) "
end

