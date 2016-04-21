FROM iron/base

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories \
  && echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories \
  && apk update && apk upgrade \
  && apk add erlang@edge \
     erlang-asn1@edge \
     erlang-common-test@edge \
     erlang-compiler@edge \
     erlang-cosevent@edge \
     erlang-coseventdomain@edge \
     erlang-cosfiletransfer@edge \
     erlang-cosnotification@edge \
     erlang-cosproperty@edge \
     erlang-costime@edge \
     erlang-costransaction@edge \
     erlang-crypto@edge \
     erlang-debugger@edge \
     erlang-dev@edge \
     erlang-dialyzer@edge \
     erlang-diameter@edge \
     erlang-edoc@edge \
     erlang-eldap@edge \
     erlang-erl-docgen@edge \
     erlang-erl-interface@edge \
     erlang-erts@edge \
     erlang-et@edge \
     erlang-eunit@edge \
     erlang-gs@edge \
     erlang-hipe@edge \
     erlang-ic@edge \
     erlang-inets@edge \
     erlang-jinterface@edge \
     erlang-kernel@edge \
     erlang-megaco@edge \
     erlang-mnesia@edge \
     erlang-observer@edge \
     erlang-odbc@edge \
     erlang-orber@edge \
     erlang-os-mon@edge \
     erlang-ose@edge \
     erlang-otp-mibs@edge \
     erlang-parsetools@edge \
     erlang-percept@edge \
     erlang-public-key@edge \
     erlang-reltool@edge \
     erlang-runtime-tools@edge \
     erlang-sasl@edge \
     erlang-snmp@edge \
     erlang-ssh@edge \
     erlang-ssl@edge \
     erlang-stdlib@edge \
     erlang-syntax-tools@edge \
     erlang-test-server@edge \
     erlang-tools@edge \
     erlang-typer@edge \
     erlang-webtool@edge \
     erlang-xmerl@edge \
  && rm -rf /var/cache/apk/*