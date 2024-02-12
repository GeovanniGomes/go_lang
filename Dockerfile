
# Stage 1: Build
FROM golang:1.21-alpine as builder

WORKDIR /usr/src/app

COPY ./bin /usr/src/app/

# Stage 2: Final image
FROM scratch
COPY --from=builder /usr/src/app/hello /hello
CMD [ "./hello" ]