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

        @matriz_casillas3 = [                          #10x10 vacia                     
            ["-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-"]
        ]

        @matriz_casillas2 = [                           #15x15 vacia
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
            ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],

        ]
        @countTurns=0
    end   

    def cargarMatriz(tamano)      #1 10x10 Usuario // 2 15x15 Usuario // 3 Por defecto
        if(tamano==1)
            return  @matriz_casillas3
        end
        if(tamano==2)
            return @matriz_casillas2
        end
        if(tamano==3)
            return @matriz_casillas
        end
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

    def iniciarMatriz(vector_ubicaciones, id_matriz)
        #llenar el tablero con mina
        #poner numeros al tablero
    end
    def cargarTableroVacio()
        return @matriz_casillas_3
    end

end