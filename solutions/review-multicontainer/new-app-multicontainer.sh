#!/bin/bash

source /usr/local/etc/ocp4.config

oc new-app --as-deployment-config ${RHT_OCP4_DEV_USER}-review-common/todoapp \
-p PASSWORD=redhat \
-p CLEAN_DATABASE=false \
-p HOSTNAME=todoui-${RHT_OCP4_DEV_USER}.${RHT_OCP4_WILDCARD_DOMAIN} \
-p BACKEND=todoapi-${RHT_OCP4_DEV_USER}.${RHT_OCP4_WILDCARD_DOMAIN}


