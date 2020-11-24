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

    @matriz =juego.cargarMatriz()
    erb:tablero
end