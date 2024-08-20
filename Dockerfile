FROM swift:5.8-jammy

WORKDIR /build

COPY ./Package.* ./

COPY ./Sources ./Sources

RUN swift package resolve

RUN swift build

CMD ["swift", "run"]
