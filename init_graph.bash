#esse script compila um grafo para ser usado no calculo das rotas. Só precisa ser rodado uma vez; para subir o servidor é só rodar o script init_sever.bash
#é preciso instalar java

#os arquivos necessarios sao:
# o gtfs.zip (baixado do transitfeed, realtivo ao trasnporte de sp)
# o sao-paulo-latest.osm.pbf ( http://download.openstreetmap.fr/extracts/south-america/brazil/southeast/)
# o executavel OTP, baixado do site do opentripplanner - otp-1.5.0-shaded.jar (versão 1.50)

#acessando o endereço do diretório
#cd /home/rodolfo/Documents/Germina/programs/temporaryOSRMrouter/

#cd C:\Users\ruffu\temporaryOSRMrouter

#versão 2.0, sem suporte para itinerário
#java -Xmx8G -jar otp-2.0.0-shaded.jar --buildStreet .
#java -Xmx8G -jar otp-2.0.0-shaded.jar --loadStreet --save .

#versão mais antiga mas que está funcionando

#comando para o meu pc - ubuntu
#java -Xmx8G -jar otp-1.5.0-shaded.jar --build /home/rodolfo/Documents/Germina/programs/temporaryOSRMrouter/graphs

#no windows, as barras são invertidas
java -Xmx4G -jar otp-1.5.0-shaded.jar --build C:\Users\ruffu\temporaryOSRMrouter\graphs\saopaulo --basePath C:\Users\ruffu\temporaryOSRMrouter
