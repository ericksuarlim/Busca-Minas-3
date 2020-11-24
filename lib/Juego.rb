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
        @celdas_Desbloqueadas = []

    end   

    def cargarMatriz()      #* es mina, - vacio, numero 
        return  @matriz_casillas
    end

    # def pintarMatriz(x, y)
    #     if @matriz_casillas[x][y] == 3
    #         return "Es bomba"
    #     end
    # end
    
    def retornarCasilla(x,y)
        return @matriz_casillas[x][y]
    end

    def getCeldasDesbloqueadas()
        return  @celdas_Desbloqueada
    end

    def seleccionarCelda(x,y)
        @celdas_Desbloqueada = ["02"]
    end

end