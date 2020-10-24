puts "Turno jugador 1: \n 1. Piedra\n 2. Papel\n 3. Tijera\n 4. Salir"

player1 = gets.chomp.to_i

while player1 != 1 && player1 != 2 && player1 != 3 && player1 != 4
  print "Jugador 1\nPor favor ingresa una opción válida\n"
  player1 = gets.chomp.to_i
end

if player1 == 4
  print "Juego finalizado \n"
elsif player1 == 3
  player1 = "Tijera"
  print "Turno jugador 2: \n 1. Piedra\n 2. Papel\n 3. Tijera\n 4. Salir \n"
elsif player1 == 2
  player1 = "Papel"
  print "Turno jugador 2: \n 1. Piedra\n 2. Papel\n 3. Tijera\n 4. Salir \n"
elsif player1 == 1
  player1 = "Piedra"
  print "Turno jugador 2: \n 1. Piedra\n 2. Papel\n 3. Tijera\n 4. Salir \n"
else
  print "inválido \n"
end

if player1 != 4
  player2 = gets.chomp.to_i

  while player2 != 1 && player2 != 2 && player2 != 3 && player2 != 4
    print "Jugador 2\nPor favor ingresa una opción válida\n"
    player2 = gets.chomp.to_i
  end

  if player2 == 4
    print "Juego finalizado \n"
  elsif player2 == 3
    player2 = "Tijera"
  elsif player2 == 2
    player2 = "Papel"
  elsif player2 == 1
    player2 = "Piedra"
  else
    print "inválido \n"
  end
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
