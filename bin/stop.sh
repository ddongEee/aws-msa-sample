#!/usr/bin/env bash

export COMPOSE_PROJECT_NAME=aws-msa-sample

export wkdr=$PWD
cd $wkdr/aws-msa-sample-monolith && make stop
cd $wkdr/aws-msa-sample-delivery && make stop

cd $wkdr
make proxystop
unset wkdr

