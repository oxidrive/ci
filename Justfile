default:
    echo 'Hello, world!'

images: dioxus-cli

dioxus-cli: (_build "dioxus-cli" "0.5.4")

_build name version:
    docker build \
      -t ghcr.io/oxidrive/ci/{{ name }}:{{ version }} \
      -f images/{{ name }}.dockerfile \
      --build-arg TOOL_VERSION={{ version }} \
      .
