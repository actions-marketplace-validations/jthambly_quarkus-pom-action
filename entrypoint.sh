#!/bin/sh -l

# Maven XML namespace
MAVEN_NS='http://maven.apache.org/POM/4.0.0'

# Filename
POM_FILE=$1

# Retrieve current Quarkus version
CURRENT_VERSION=$(xmlstarlet sel -N x="$MAVEN_NS" -t -v '/x:project/x:properties/x:quarkus.platform.version' -n "$POM_FILE")
echo "::set-output name=CURRENT_VERSION::$CURRENT_VERSION"

# Retrieve current project group
PROJECT_GROUP=$(xmlstarlet sel -N x="$MAVEN_NS" -t -v '/x:project/x:groupId' -n "$POM_FILE")
echo "::set-output name=PROJECT_GROUP::$PROJECT_GROUP"

# Retrieve current project name
PROJECT_NAME=$(xmlstarlet sel -N x="$MAVEN_NS" -t -v '/x:project/x:artifactId' -n "$POM_FILE")
echo "::set-output name=PROJECT_NAME::$PROJECT_NAME"

# Retrieve current extensions
QUARKUS_EXTENSIONS=$(xmlstarlet sel -N x="$MAVEN_NS" -t -m '/x:project/x:dependencies/x:dependency' -v 'x:groupId' -o ':' -v 'x:artifactId' -n "$POM_FILE" | tr '\n' ',' | sed s'/,$//')
echo "::set-output name=QUARKUS_EXTENSIONS::$QUARKUS_EXTENSIONS"