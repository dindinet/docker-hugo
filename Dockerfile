FROM lgsd/diamond

MAINTAINER Luca G. Soave <luca.soave@gmail.com>

COPY ./hugo_0.12_linux_amd64 /bin/hugo
ADD  ./blog /blog

ENV HUGO_BASE_URL http://dklongley.koding.io

CMD  ["/bin/hugo", "server", "-b","http://dklongley.koding.io", "-w", "-s", "/blog"]

EXPOSE 1313
