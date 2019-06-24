if [ "$DEBUG_PORT" ]; then
  export JAVA_OPTS="$JAVA_OPTS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=$DEBUG_PORT"
fi

# Moved into a shell script because the above 'export' statements cannot be retrieved
# between multiple statements in a Dockerfile
echo "Starting Java with the arguments $JAVA_OPTS"
java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar
