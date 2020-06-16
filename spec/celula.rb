class Juego
  def testEvaluarCelulaViva(tablero)
    contadorVecinos = 0
    x = 3
    y = 3
    xAuxiliar = x
    yAuxiliar = y + 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x - 1
    yAuxiliar = y + 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x + 1
    yAuxiliar = y + 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x + 1
    yAuxiliar = y
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x - 1
    yAuxiliar = y
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x - 1
    yAuxiliar = y - 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x
    yAuxiliar = y - 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x + 1
    yAuxiliar = y - 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    if contadorVecinos == 1 || contadorVecinos == 0 || contadorVecinos >= 4
      tablero[x][y] = 0
    end
    if contadorVecinos == 3 || contadorVecinos == 2
      tablero[x][y] = 1
    end
  end

  def testEvaluarCelulaMuerta(tablero)
    contadorVecinos = 0
    x = 2
    y = 3
    xAuxiliar = x
    yAuxiliar = y + 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x - 1
    yAuxiliar = y + 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x + 1
    yAuxiliar = y + 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x + 1
    yAuxiliar = y
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x - 1
    yAuxiliar = y
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x - 1
    yAuxiliar = y - 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x
    yAuxiliar = y - 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    xAuxiliar = x + 1
    yAuxiliar = y - 1
    if tablero[xAuxiliar][yAuxiliar] == 1
      contadorVecinos = contadorVecinos + 1
    end
    if contadorVecinos == 1 || contadorVecinos == 0 || contadorVecinos >= 4
      tablero[x][y] = 0
    end
    if contadorVecinos == 3 || contadorVecinos == 2
      tablero[x][y] = 1
    end
  end
end

class Tablero
  def testImprimirTablero10x10(tablero)
    for i in 0..9
      for j in 0..9
        print tablero[i][j]
      end
      print "\n"
    end
    print "\n"
  end
end

tablero = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
           [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
           [0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]

obj = Juego.new
tab = Tablero.new
tab.testImprimirTablero10x10(tablero)
obj.testEvaluarCelulaViva(tablero)
obj.testEvaluarCelulaMuerta(tablero)
tab.testImprimirTablero10x10(tablero)
