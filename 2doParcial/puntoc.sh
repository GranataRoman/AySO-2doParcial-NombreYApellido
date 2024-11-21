
mkdir appHomeBanking
cd appHomeBanking/
cat > index.html
cat > contacto.html
cat > dockerfile
FROM nginx
COPY appHomeBanking /usr/share/nginx/html

docker login -u romangranta
pass

docker build -t romangranta/2parcial-ayso:v1.0
docker image list
docker push romangranta/2parcial-ayso:v1.0
docker run -d -p 8080:80 romangranta/2parcial-ayso:v1.0
docker container ls


