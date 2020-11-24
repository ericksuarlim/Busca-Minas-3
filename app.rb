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
    tamano=1 #estoy poniendo 1 porque aun no esta terminado
    #tamano= params[:dificultad].to_i
    @matriz =juego.cargarMatriz(tamano)
    erb:tablero
end

get '/configurarTamano' do
end