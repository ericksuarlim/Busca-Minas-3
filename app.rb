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
    @id_dificultad= params[:dificultad].to_i

    if(@id_dificultad==1)
        min1x=params[:mina1x].to_i;
        min1y=params[:mina1y].to_i;
        min2x=params[:mina2x].to_i;
        min2y=params[:mina2y].to_i;
        min3x=params[:mina3x].to_i;
        min3y=params[:mina3y].to_i;
        vector=[min1x,min1y,min2x,min2y,min3x,min3y];
    else
        min1x=params[:minaB1x].to_i;
        min1y=params[:minaB1y].to_i;
        min2x=params[:minaB2x].to_i;
        min2y=params[:minaB2y].to_i;
        min3x=params[:minaB3x].to_i;
        min3y=params[:minaB3y].to_i;
        min4x=params[:minaB4x].to_i;
        min4y=params[:minaB4y].to_i;
        min5x=params[:minaB5x].to_i;
        min5y=params[:minaB5y].to_i;
        vector=[min1x,min1y,min2x,min2y,min3x,min3y,min4x,min4y,min5x,min5y];
    end
    
    # @suma= vector[1] #Variable de prueba por si no entra a la vista correcta
    # erb:id           
    @matriz =juego.cargarMatrizCompleja(@id_dificultad,vector)

    if @id_dificultad == 1
        erb:tableroFacil 
    else @id_dificultad == 2
        erb:tableroDificil                               
    end
 
end 

