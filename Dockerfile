FROM tutum/curl

ADD curl_server.bash /

CMD ["/bin/bash", "/curl_server.bash"]
