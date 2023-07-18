FROM golang:1.11.4    // image:tag

COPY main.go /app/main.go  // nama file aplikasi -> akan disimpan di folder/nama file

CMD ["go", "run", "/main.go"]   // array perintah dengan dipisah koma dan tanda petik dua
------------
// Build Image
docker build --tag app-golang:1.0 .
// cek image
docker images
// Membuat container dan membuka port supaya bisa diekspos 
docker container create --name app1 -p 8080:8080 app-golang:1.0
// jalankan container 
docker container start app1
// cek browser di localhost:8080
