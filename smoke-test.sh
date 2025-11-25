#!/bin/bash
#checking if services are running

echo "Running Smoke Tests..."

#Testing web1
if curl -s http://localhost:5000/health > /dev/null; then
    echo "web1 is up"
else
    echo "web1 is down"
    exit 1
fi

#Testing web2
if curl -s http://localhost:5001/health > /dev/null; then
    echo "web2 is up"
else
    echo "web2 is down"
    exit 1
fi

#Testing Redis
if docker exec redis redis-cli ping | grep -q PONG; then
    echo "Redis is up"
else
    echo "Redis is down"
    exit 1
fi

echo "Passes Smoke Testing!"
