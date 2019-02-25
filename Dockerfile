FROM mikand/tamer:ubuntu16

RUN apt-get update && apt-get install -y build-essential autoconf libtool pkg-config libgflags-dev libgtest-dev clang libc++-dev curl git

RUN git clone -b $(curl -L https://grpc.io/release) https://github.com/grpc/grpc && cd grpc && git submodule update --init && make && make install && cd third_party/protobuf && make install

CMD /bin/bash
