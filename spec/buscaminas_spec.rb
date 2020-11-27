require "Juego"

RSpec.describe Juego do

    before{@juego=Juego.new}
    

    it "Cargar Matriz Simple: En este caso deberia de devolver 3" do
        juego = Juego.new
        expect(@juego.cargarMatrizSimple()[1][1]).to eq ('3')
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

    it "Cargar Matriz Facil: En este caso deberia de retornar -"  do
        juego =Juego.new
        expect(@juego.cargarMatrizCompleja(1,[])[0][0]).to eq ('-')
        expect(@juego.cargarMatrizCompleja(1,[])[0][9]).to eq ('-')
        expect(@juego.cargarMatrizCompleja(1,[])[9][0]).to eq ('-')
        expect(@juego.cargarMatrizCompleja(1,[])[9][9]).to eq ('-')
        #Probando con las esquinas del tablero 10x10
        
    end

    it "Cargar Matriz Dificil: En este caso deberia de retornar -"  do
        juego =Juego.new
        expect(@juego.cargarMatrizCompleja(2,[])[0][0]).to eq ('-')
        expect(@juego.cargarMatrizCompleja(2,[])[0][14]).to eq ('-')
        expect(@juego.cargarMatrizCompleja(2,[])[14][0]).to eq ('-')
        expect(@juego.cargarMatrizCompleja(2,[])[14][14]).to eq ('-')
        #Probando con las esquinas del tablero 15x15
        
    end

    it "Reemplazar valor en Matriz Facil: En este caso deberia de devolver *"  do
        juego =Juego.new
        vector=[1,1]
        expect(@juego.cargarMatrizCompleja(1,vector)[1][1]).to eq ('*')
    end

    it "Reemplazar valor en Matriz Dificil: En estos dos casos deberia de devolver *"  do
        juego =Juego.new
        vector=[1,1,2,2]
        expect(@juego.cargarMatrizCompleja(2,vector)[1][1]).to eq ('*')
        expect(@juego.cargarMatrizCompleja(2,vector)[2][2]).to eq ('*')
    end

    it "Agregar numero a Matriz Facil: En este caso deberia de retornar 2"  do
        juego =Juego.new
        vector=[1,1,2,2,3,3]
        expect(@juego.cargarMatrizCompleja(1,vector)[1][2]).to eq ('2')
        
    end

    it "Agregar numero a Matriz Dificil: En este caso deberia de retornar 1,2"  do
        juego =Juego.new
        vector=[1,1,2,2,3,3]
        expect(@juego.cargarMatrizCompleja(1,vector)[0][0]).to eq ('1')
    end

end