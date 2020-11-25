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
    @matriz =juego.cargarMatriz(3)
    erb:tablero
end

get '/cargartablero' do
    @id_matriz= params[:dificultad].to_i
    @suma = @id_matriz + @id_matriz             #Variable de prueba por si no entra a la vista correcta
    @matriz =juego.cargarMatriz(@id_matriz)

    if @id_matriz == 1
        erb:tableroFacil 
    
    elsif @id_matriz == 2
        erb:tableroDificil 
    else
        erb:id                                  #Vista de prueba por si no entra correctamente 
    end
 
end 

