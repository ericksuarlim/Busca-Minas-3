require 'sinatra'
require './config'
require './lib/Juego'

juego = Juego.new

# get '/' do
#     #@celdas_Desbloqueadas = juego.getCeldasDesbloqueadas()
#     @matriz =juego.cargarMatriz()

#     erb:tablero
# end

get '/' do

    erb:home
end

get '/abrircasilla' do
    x = params[:X].to_i
    y = params[:Y].to_i
    juego.seleccionarCelda(x,y)
    @celdas_Desbloqueadas = '02'
    @matriz =juego.cargarMatriz()
    erb:tablero 
end

get '/tutablero' do
    
    erb:tableroedit
end

get '/tableromain' do

    @matriz =juego.cargarMatriz()
    erb:tablero
end