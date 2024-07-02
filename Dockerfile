FROM denoland/deno:alpine-1.44.4

WORKDIR /app

USER deno

COPY . .
RUN deno cache main.ts

EXPOSE 8000

CMD ["run", "-A", "main.ts"]
