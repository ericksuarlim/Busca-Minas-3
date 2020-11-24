class Juego

    def initialize
        @matriz_casillas = [
            ["2","*","1","-","-","-","-","-","-","-"],
            ["*","3","1","-","-","-","-","-","-","-"],
            ["2","*","1","-","-","-","-","1","1","1"],
            ["2","2","1","-","-","-","-","1","*","1"],
            ["1","*","2","1","-","-","-","1","1","1"],
            ["1","2","*","1","-","-","-","-","-","-"],
            ["-","1","1","1","-","1","1","1","-","-"],
            ["-","-","-","-","-","1","*","1","-","-"],
            ["-","-","-","1","1","2","1","1","-","-"],
            ["-","-","-","1","*","1","-","-","-","-"]
        ]
        @countTurns=0
    end   

    def cargarMatriz()      #* es mina, - vacio, numero 
        return  @matriz_casillas
    end
   
    def inspeccioanarCasilla(x,y)
        @countTurns= @countTurns + 1
        esBomba(x, y)
        return @matriz_casillas[x][y]
    end

    def esGanador()
        if(@countTurns==92)
            return true
        else
            return false
        end   
    end

    def esBomba(posX, posY)
        if(@matriz_casillas[posX][posY]=='*')
            return true
        else
            return false
        end
    end

end