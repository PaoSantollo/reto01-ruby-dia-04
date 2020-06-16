require "celula.rb"

RSpec.describe Juego do
  it "crea la clase juego" do
    juego = Juego.new
    expect(juego).to be_kind_of(Juego)
  end
  #checa que cualquier clase juego tenga un metodo reglas
  it "reglas" do
    juego = Juego.new
    expect(juego).to respond_to(:reglas)
    puts "... testing metodo reglas... \n"
  end
end
