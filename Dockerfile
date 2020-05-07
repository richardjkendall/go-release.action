FROM golang:1.14.2-alpine
MAINTAINER richard Kendall <richard.kendall@gmail.com>

LABEL "com.github.actions.name"="Go Release Binary"
LABEL "com.github.actions.description"="Automate publishing Go build artifacts for GitHub releases"
LABEL "com.github.actions.icon"="cpu"
LABEL "com.github.actions.color"="orange"

LABEL "name"="Automate publishing Go build artifacts for GitHub releases through GitHub Actions"
LABEL "version"="1.0.1"
LABEL "repository"="http://github.com/richardjkendall/go-release.action"
LABEL "homepage"="http://rjk.codes"

LABEL "maintainer"="Richard Kendall <richard.kendall@gmail.com>"

RUN apk add --no-cache curl jq git build-base

ADD entrypoint.sh /entrypoint.sh
ADD build.sh /build.sh
ENTRYPOINT ["/entrypoint.sh"]
