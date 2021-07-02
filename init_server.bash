#eese script sobe um serviodr local para calcular as rotas a partir do grafo calculado no script init_graph.bash



#versão nova, sem suporte para itinerarios
#java -Xmx8G -jar otp-2.0.0-shaded.jar --load .

#versão mais antiga mas que está funcionando

#comando para o meu pc - ubuntu
#java -Xmx8G -jar otp-1.5.0-shaded.jar --server --basePath /home/rodolfo/Documents/Germina/programs/temporaryOSRMrouter --router saopaulo

#no windows, as barras são invertidas
java -Xmx8G -jar otp-1.5.0-shaded.jar --server --basePath C:\Users\ruffu\temporaryOSRMrouter --router saopaulo