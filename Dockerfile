FROM elixir:1.11-alpine

RUN apk add inotify-tools npm postgresql-client

WORKDIR /app

COPY . /app

RUN mix local.hex --force
RUN mix local.rebar --force

CMD ["sh", "entrypoint.sh"]