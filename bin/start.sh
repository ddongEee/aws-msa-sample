#!/usr/bin/env bash

export COMPOSE_PROJECT_NAME=aws-msa-sample

export wkdr=$PWD
cd $wkdr
make proxystart

cd $wkdr/aws-msa-sample-monolith && make start
cd $wkdr/aws-msa-sample-delivery && make start

cd $wkdr
unset wkdr

