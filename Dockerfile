FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IG1kYy1zZXJ2ZXItYXBiCmRlc2NyaXB0aW9uOiBBZXJvR2VhciBt\
ZGMtc2VydmVyIFNlcnZlciAKYmluZGFibGU6IFRydWUKYXN5bmM6IG9wdGlvbmFsCnRhZ3M6CiAg\
LSBtb2JpbGUtc2VydmljZQogIC0gbW9iaWxlLWNsaWVudC1lbmFibGVkCm1ldGFkYXRhOgogIGRp\
c3BsYXlOYW1lOiBNb2JpbGUgRGV2ZWxvcGVyIENvbnNvbGUgCiAgbG9uZ0Rlc2NyaXB0aW9uOiAi\
QW4gQVBCIGRlcGxveWluZyB0aGUgQWVyb0dlYXIgbWRjLXNlcnZlciBTZXJ2ZXIgd2l0aCBwZXJz\
aXN0ZW50IHN0b3JhZ2UgYW5kIGF1dGhlbnRpY2F0aW9uIHRocm91Z2ggT3BlbnNoaWZ0IgogIGlt\
YWdlVXJsOiAiaHR0cHM6Ly9wYnMudHdpbWcuY29tL3Byb2ZpbGVfaW1hZ2VzLzE3OTQ0NDAwMDUv\
YWVyb2dlYXJfaWNvbi0xXzQwMHg0MDAucG5nIgogIGRvY3VtZW50YXRpb25Vcmw6ICJodHRwczov\
L2RvY3MuYWVyb2dlYXIub3JnL2V4dGVybmFsL2FwYi9tZGMtc2VydmVyLmh0bWwiCiAgcHJvdmlk\
ZXJEaXNwbGF5TmFtZTogIlJlZCBIYXQsIEluYy4iCiAgZGVwZW5kZW5jaWVzOiAKICAgICAgLSAi\
ZG9ja2VyLmlvL29wZW5zaGlmdC9vYXV0aC1wcm94eTp2MS4xLjAiCiAgICAgIC0gImRvY2tlci5p\
by9hZXJvZ2Vhci9tb2JpbGUtZGV2ZWxvcGVyLWNvbnNvbGU6bGF0ZXN0IgogIHNlcnZpY2VOYW1l\
OiBtZGMtc2VydmVyCiAgYmluZGluZ3NMaW1pdDogMgpwbGFuczoKICAtIG5hbWU6IGRlZmF1bHQK\
ICAgIGRlc2NyaXB0aW9uOiBQZXJzaXN0ZW50IGRlcGxveW1lbnQgb2YgbWRjLXNlcnZlcgogICAg\
ZnJlZTogVHJ1ZQogICAgcGFyYW1ldGVyczogW10K"


COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
COPY vars /opt/ansible/vars
RUN chmod -R g=u /opt/{ansible,apb}
USER apb