FROM python:3-alpine

RUN pip install ansible jmespath

COPY thingsboard-initialize.yml /thingsboard-initialize.yml

USER 1001

HEALTHCHECK NONE

CMD ["ansible-playbook", "/thingsboard-initialize.yml"]