FROM python:3.7-stretch

LABEL maintainer="Nuno Diogo da Silva <diogosilva.nuno@gmail.com>"

ENV PATH=/root/.local/bin:$PATH

RUN pip install pipx && \
    pipx install pylint && \
    pipx install black && \
    pipx install poetry

CMD ["/root/.local/bin/poetry"]
