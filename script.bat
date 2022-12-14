echo "Criando imagens para minha aplicação"
docker build -t marioreis00/dio_proj01:1.0 backend/.
docker build -t marioreis00/dio_proj01mysql:1.0 database/.

echo "Push das imagens"
docker push marioreis00/dio_proj01:1.0
docker push marioreis00/dio_proj01mysql:1.0

echo "Criando services no Cluster"

kubectl apply -f ./services.yml

echo "Criando deployments no Cluster"

kubectl apply -f ./deployment.yml
