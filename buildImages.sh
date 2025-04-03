version='v1' # Versao Inicial
#echo "TROCAR A VERSAO DAS IMAGENS EM docker-compose.yml"
#sed -i'' -e 's/:v1/:v2/g' docker-compose.yml

echo "GERAR IMAGENS FRONT_ETL ${version}"

echo "FRONT ETL"
git clone git@github.com:tiagoKurt/Front-ETL.git servicos/frontend
cd servicos/frontend
bash buildImages.sh $version
cd ../..
rm -rf servicos
