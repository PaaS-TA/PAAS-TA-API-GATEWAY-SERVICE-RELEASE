#!/usr/bin/env bash

# job template binding variables
# e.g. JOB_NAME=redis, JOB_INDEX=0

export NAME='<%= name %>'
export JOB_INDEX=<%= index %>

# full job name, like redis/0 or webapp/3
export JOB_FULL="$NAME/$JOB_INDEX"
