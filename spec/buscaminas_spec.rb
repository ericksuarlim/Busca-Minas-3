require "Juego"

RSpec.describe Juego do

    before{@juego=Juego.new}
    

    it "Cargar Matriz: En este caso deberia de devolver 3" do
        juego = Juego.new
        expect(@juego.cargarMatriz(3)[1][1]).to eq ('3')
    end

    it "Cargar Matriz: En este caso deberia de devolver -" do
        juego = Juego.new
        expect(@juego.cargarMatriz(2)[1][1]).to eq ('-')
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

    it "Tablero vacio 10x10: En este caso deberia de retorna -"  do
        juego =Juego.new
        expect(@juego.cargarTableroVacio10x10()[0][0]).to eq ('-')
        expect(@juego.cargarTableroVacio10x10()[0][9]).to eq ('-')
        expect(@juego.cargarTableroVacio10x10()[9][0]).to eq ('-')
        expect(@juego.cargarTableroVacio10x10()[9][9]).to eq ('-')
        #Probando con las esquinas del tablero 10x10
        
    end

    it "Tablero vacio 15x15: En este caso deberia de retorna -"  do
        juego =Juego.new
        expect(@juego.cargarTableroVacio15x15()[0][0]).to eq ('-')
        expect(@juego.cargarTableroVacio15x15()[0][14]).to eq ('-')
        expect(@juego.cargarTableroVacio15x15()[14][0]).to eq ('-')
        expect(@juego.cargarTableroVacio15x15()[14][14]).to eq ('-')
        #Probando con las esquinas del tablero 15x15
        
    end


end