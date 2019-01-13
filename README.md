# docker-wkhtmltopdf
Easy to use wkhtmltopdf tool


# How to build

```
$ docker build -t my-wkhtmltopdf .
```

# How to pull

```
$ docker pull sshtel/wkhtmltopdf
```

# How to use

convert local html file to PDF
```
$ docker run -v "$(pwd)/public:/app/public" sshtel/wkhtmltopdf  /bin/bash -c "./html2pdf.sh /app/public/index.html /app/public/output.pdf 3"

// last parameter '3' of html2pdf.sh is for sleep seconds. Since wkhtmltopdf tool should work in background, script should wait for the background job for a while
```


convert web site to Image
```
$ docker run -v "$(pwd)/public:/app/public" sshtel/wkhtmltopdf  /bin/bash -c "./html2pdf.sh www.google.com /app/public/google.jpg 3"
```
