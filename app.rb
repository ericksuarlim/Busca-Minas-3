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
    id_matriz= params[:dificultad].to_i

    # min1x= params[:mina1x].to_i
    # min1y= params[:mina1y].to_i

    # vector=[min1x,min1y,.....]
    # juego.iniciarMatriz(vector, id_matriz)

    @matriz = juego.cargarMatriz(id_matriz)
    if(id_matriz==1)
        erb:tableroFacil
    end
    if (id_matriz==2)
        erb:tableroDificil
    end
end


