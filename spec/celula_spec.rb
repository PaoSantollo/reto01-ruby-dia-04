require "celula.rb"

RSpec.describe Juego do
  it "crea la clase juego" do
    juego = Juego.new
    expect(juego).to be_kind_of(Juego)
  end
  #checa que cualquier clase juego tenga los metodos para evaluar
  it "celulaViva" do
    juego = Juego.new
    expect(juego).to respond_to(:testEvaluarCelulaViva)
    puts "... testing testEvaluarCelulaViva... \n"
  end
  it "celulaMuerta" do
    juego = Juego.new
    expect(juego).to respond_to(:testEvaluarCelulaMuerta)
    puts "... testing testEvaluarCelulaMuerta... \n"
  end
end

RSpec.describe Tablero do
  it "crea la clase juego" do
    tablero = Tablero.new
    expect(tablero).to be_kind_of(Tablero)
  end
  #checa que cualquier clase juego tenga los metodos para evaluar
  it "imprimirTablero" do
    tablero = Tablero.new
    expect(tablero).to respond_to(:testImprimirTablero10x10)
    puts "... testing testImprimirTablero10x10.. \n"
  end
end
