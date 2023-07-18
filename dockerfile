FROM golang:1.11.4    // image:tag
COPY main.go /app/main.go  // nama file aplikasi -> akan disimpan di folder/nama file
CMD ["go", "run", "/main.go"]   // array perintah dengan dipisah koma dan tanda petik dua

------------------------Build Image & Container-------------------
* docker build --tag <namaImage:tagVersi> <lokasiFile>
      docker build --tag imagegolang:1.0 .
// cek image
// Membuat container dan membuka port supaya bisa diekspos 
*   docker container create --name <namaContainer> -p <port:port>  <namaImage:tagVersi>
        docker container create --name containergolang -p 8080:8080 imagegolang:1.0
// jalankan container 
*  docker container start <namaContainer>
        docker container start containergolang
// cek browser di localhost:8080

------------------------Upload Image di repository Docker-------------------
// masuk hub.docker.com + klik create repository 
// upload image ke repository
* docker tag <namaImage:tagVersi> <namauserDocker/namaImage:tagVersi> 
      docker tag imagegolang:1.0 atsbitiman/imagegolang:1.0
// push lagi ke repo
*  docker push <namauserDocker/namaImage:tagVersi>
      docker push atsbitiman/imagegolang:1.0
// jika ditolak maka harus login dengan perintah :
*  docker login
