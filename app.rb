require 'sinatra'
require './config'
require './lib/Juego'

juego = Juego.new

get '/' do

    erb:home
end

get '/abrircasilla' do
    x = params[:X].to_i
    y = params[:Y].to_i
    juego.inspeccioanarCasilla(x,y)
end

get '/tutablero' do
    
    erb:tableroedit
end

get '/tableromain' do
    @matriz =juego.cargarMatrizSimple()
    erb:tablero
end

get '/cargartablero' do
    @id_matriz= params[:dificultad].to_i

    min1x=params[:mina1x];
    min1y=params[:mina1y];
    min2x=params[:mina2x];
    min2y=params[:mina2y];
    min3x=params[:mina3x];
    min3y=params[:mina3y];
    vector=[min1x,min1y,min2x,min2y,min3x,min3y];
    if(@id_matriz==2)
        min4x=params[:mina4x];
        min4y=params[:mina4y];
        min5x=params[:mina5x];
        min5y=params[:mina5y];
        vector=[min1x,min1y,min2x,min2y,min3x,min3y,min4x,min4y,min5x,min5y];
    end
    
    # @suma= vector[1] #Variable de prueba por si no entra a la vista correcta
    # erb:id           
    @matriz =juego.cargarMatrizCompleja(@id_matriz,vector)

    if @id_matriz == 1
        erb:tableroFacil 
    else @id_matriz == 2
        erb:tableroDificil                               
    end
 
end 

