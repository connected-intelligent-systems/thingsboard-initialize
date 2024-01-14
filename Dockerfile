FROM python:3-alpine

RUN pip install ansible jmespath

COPY thingsboard-initialize.yml /thingsboard-initialize.yml

CMD ["ansible-playbook", "/thingsboard-initialize.yml"]