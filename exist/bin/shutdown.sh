#!/bin/bash
# -----------------------------------------------------------------------------
# shutdown.sh - Stop Jetty + eXist
#
# $Id$
# -----------------------------------------------------------------------------

## will be set by the installer
if [ -z "$EXIST_HOME" ]; then
	EXIST_HOME="/vagrant/exist"
fi

if [ ! -d "$JAVA_HOME" ]; then
	JAVA_HOME="/usr/lib/jvm/java-7-openjdk-i386/jre"
fi

 

case "$0" in
	/*)
		SCRIPTPATH="$(dirname "$0")"
		;;
	*)
		SCRIPTPATH="$(dirname "$PWD/$0")"
		;;
esac

# source common functions and settings
source "${SCRIPTPATH}"/functions.d/eXist-settings.sh
source "${SCRIPTPATH}"/functions.d/jmx-settings.sh
source "${SCRIPTPATH}"/functions.d/getopt-settings.sh

check_exist_home "$0";

set_exist_options;
check_java_home;

# set java options
set_java_options;

echo "${JAVA_RUN}" ${JAVA_OPTIONS} ${OPTIONS} -jar "$EXIST_HOME/start.jar" \
	shutdown "$@"
"${JAVA_RUN}" ${JAVA_OPTIONS} ${OPTIONS} -jar "$EXIST_HOME/start.jar" \
	shutdown "$@"
