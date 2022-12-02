echo "This script sets up the project, from scratch, for running"

if {
    docker
    docker-compose
} &> /dev/null ; then
    {
        docker volume create caddy_data
    } &> /dev/null

    echo "Done! Now run 'docker-compose up' to start the app, run 'docker-compose down' to stop"
else
    echo "docker and docker-compose returned an error... do you have docker installed?"
fi