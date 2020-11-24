require "Juego"

RSpec.describe Juego do

    before{@juego=Juego.new}
    

    it "es tres" do
        juego = Juego.new
        expect(@juego.cargarMatriz()[1][1]).to eq ('3')
    end

    it "Retonar Casilla deberia devolver en este caso: 2" do
        juego = Juego.new
        expect(@juego.inspeccioanarCasilla(0, 0)).to eq ('2')
    end

    it "Devolver espacio vacio deberia de devolver - en 0-3"  do
        juego =Juego.new
        expect(@juego.inspeccioanarCasilla(0,3)).to eq ('-')
    end
    
    it "Devolver un numero deberia de devolver 3 en 0-3"  do
        juego =Juego.new
        expect(@juego.inspeccioanarCasilla(1,1)).to eq ('3')
    end

    it "Es ganador: Deberia esta prueba deberia retornar False"  do
       juego =Juego.new
       expect(@juego.esGanador()).to eq (false)
    end

    it "Es bomba: En este caso deberia de retorna True"  do
        juego =Juego.new
        expect(@juego.esBomba(0,1)).to eq (true)
    end

    it "Es bomba: En este caso deberia de retorna False"  do
        juego =Juego.new
        expect(@juego.esBomba(0,0)).to eq (false)
    end



end