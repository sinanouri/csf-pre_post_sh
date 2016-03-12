#!/bin/sh

CSF_BIN_PATH="/usr/local/csf/bin"

CSFPRED_PATH="/usr/local/include/csf/pre.d"
CSFPOSTD_PATH="/usr/local/include/csf/post.d"


cp csfpre.sh ${CSF_BIN_PATH}/
chown root:root ${CSF_BIN_PATH}/csfpre.sh
chmod 700 ${CSF_BIN_PATH}/csfpre.sh

cp csfpost.sh ${CSF_BIN_PATH}/
chown root:root ${CSF_BIN_PATH}/csfpost.sh
chmod 700 ${CSF_BIN_PATH}/csfpost.sh

if [ ! -d ${CSFPRED_PATH} ]; then
	mkdir -p ${CSFPRED_PATH}
fi

if [ ! -d ${CSFPOSTD_PATH} ]; then
	mkdir -p ${CSFPOSTD_PATH}
fi
