class Juego

    def initialize
        @matriz_principal = [
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

        # @matriz_casillas3 = [                          #10x10 vacia                     
        #     ["-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-"]
        # ]
        # @matriz5= Array.new(15){Array.new(15){'-'}}
        @matriz_facil = Array.new(10){Array.new(10){'-'}}
        @matriz_dificil= Array.new(15){Array.new(15){'-'}}
        # @matriz_casillas2 = [                           #15x15 vacia
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        #     ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-"],
        # ]

        @countTurns=0
    end   

    def cargarMatrizSimple()      #1 10x10 Usuario // 2 15x15 Usuario // 3 Por defecto
        return @matriz_principal
    end

    def cargarMatrizCompleja(id_dificultad,vector)
        ingresarMinas(id_dificultad,vector)

        if(id_dificultad==1)
            return @matriz_facil
        end
        if(id_dificultad==2)
            return @matriz_dificil
        end
    end
   
    def inspeccioanarCasilla(x,y)
        @countTurns= @countTurns + 1
        esBomba(x, y)
        return @matriz_principal[x][y]
    end

    def esGanador()
        if(@countTurns==92)
            return true
        else
            return false
        end   
    end

    def esBomba(posX, posY)
        if(@matriz_principal[posX][posY]=='*')
            return true
        else
            return false
        end
    end

    def ingresarMinas(id_dificultad, vector)
        #llenar el tablero con mina
        if( vector.length>0)
            
            for i in (0..vector.length-1).step(2) do
                if( id_dificultad==1)
                    @matriz_facil[vector[i]][vector[i+1]]= '*'
                else
                    @matriz_dificil[vector[i]][vector[i+1]]= '*'
                end
            end

        end         
        #poner numeros al tablero
    end
    
    def cargarTableroVacio10x10()
        return @matriz_facil
    end

    def cargarTableroVacio15x15()
        return @matriz_dificil
    end

end