FROM coredns/coredns:latest
COPY Corefile /etc/coredns/Corefile
ENTRYPOINT ["/coredns"]
CMD ["-conf", "/etc/coredns/Corefile"]