#!/bin/bash
export INGRESS_HOST=10.14.9.13
export INGRESS_PORT=80
while : ; do \
    export GREP_COLOR='1;36'; \
    curl $INGRESS_HOST:$INGRESS_PORT -so - | grep -iPo '(?<=<title>)(.*)(?=</title>)' | grep --color=always "Tito"; \
   export GREP_COLOR='0;32'; \
    curl $INGRESS_HOST:$INGRESS_PORT -so - | grep -iPo '(?<=<title>)(.*)(?=</title>)' | grep --color=always "Time Traffic overview by Vince"; \
    sleep 1; \
done
