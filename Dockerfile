FROM jpetazzo/dind

# update the repository sources list
# and install dependencies
RUN apt-get update \
    && apt-get install -y curl \
    && apt-get -y autoclean
# node 10
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash \
    && apt-get install -y nodejs

# gcc g++
RUN apt-get -y update && apt-get install -y --no-install-recommends gcc g++

RUN npm -v
RUN node -v