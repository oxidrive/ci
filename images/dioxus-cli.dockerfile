FROM rust:1-slim as web-build

RUN apt-get update && apt-get install build-essential -y

RUN rustup default stable

ARG TOOL_VERSION="0.5.4"
RUN cargo install dioxus-cli@$TOOL_VERSION