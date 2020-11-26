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

        @matriz_facil = Array.new(10){Array.new(10){'-'}}
        @matriz_dificil= Array.new(15){Array.new(15){'-'}}

        @countTurns=0
    end   

    def cargarMatrizSimple()      #1 10x10 Usuario // 2 15x15 Usuario // 3 Por defecto
        return @matriz_principal
    end

    def cargarMatrizCompleja(id_dificultad,vector)
        ingresarMinas(id_dificultad,vector)
        agregarNumerosdeReferencia(id_dificultad)

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

    def agregarNumerosdeReferencia(id_dificultad)
        if(id_dificultad==1)
            tamano=10
        else
            tamano=15
        end

        for i in (0..tamano) do #2 for para recorrer la matriz
            for j in (0..tamano)do

                cantidad_minas=0

                if(@matriz_facil[i][j] != '*')#para evitar que reemplace una mina
                    for m in (i-1..i+1) do #2 For para recorrer las casillas alrededor de la casilla donde nos encontramos
                        for n in (j-1..j+1) do
                            if(@matriz_facil[m][n] != nil)#para evitar ingresar a casillas nulas
                                
                                if(@matriz_facil[m][n]=='*')#aqui falla ya que cuadno el j y i sean 0, no existe el valor matriz[-1][-1]
                                    cantidad_minas= cantidad_minas + 1
                                end
                            end
                        end
                    end
                    @matriz_facil[i][j]=cantidad_minas
                end
            end
        end

    end

end