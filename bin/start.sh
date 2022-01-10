#!/usr/bin/env bash

export COMPOSE_PROJECT_NAME=aws-msa-sample

export wkdr=$PWD
cd $wkdr/aws-msa-sample-monolith && make build start
cd $wkdr/aws-msa-sample-delivery && make build start

cd $wkdr
make proxystart

unset wkdr

