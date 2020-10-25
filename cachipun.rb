def valid_option(x)
  puts "Turno jugador: \n 1. Piedra\n 2. Papel\n 3. Tijera\n 4. Salir"
  x = gets.chomp.to_i
  while x != 1 && x != 2 && x != 3 && x != 4
    print "Jugador\nPor favor ingresa una opción válida\n"
    x = gets.chomp.to_i
  end
  x = x
end

def option_select(x)
  if x == 4
    print "Juego finalizado \n"
  elsif x == 3
    x = "Tijera"
  elsif x == 2
    x = "Papel"
  elsif x == 1
    x = "Piedra"
  else
    print "inválido \n"
  end
end



player1 = 0
player1 = valid_option(player1).to_i

if player1 != 4
  player1 = option_select(player1)
  player2 = 0
  player2 = valid_option(player2).to_i
  player2 = option_select(player2)
else
  print "\n"
end

if player1 == player2
  puts "Empate.\n Jugador 1 ha jugado #{player1} y el jugador 2 ha jugado #{player2}"
elsif (player1 == "Piedra" && player2 == "Tijera") || (player1 == "Tijera" && player2 == "Papel") || (player1 == "Papel" && player2 == "Piedra")
  puts "Victoria para el jugador 1. \n Jugador 1 ha jugado #{player1} y el jugador 2 ha jugado #{player2}"
elsif (player1 == "Tijera" && player2 == "Piedra") || (player1 == "Papel" && player2 == "Tijera") || (player1 == "Piedra" && player2 == "Papel")
  puts "Victoria para jugador 2. \n Jugador 2 ha jugado #{player2} y jugador 1 ha jugado #{player1}"
end
