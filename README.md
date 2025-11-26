-Docker Containerization and Multi-Stage CI/CD Pipeline
-Used a simple Node.js microservices application with Nginx proxy and Redis database

Project structure:
.
├── README.md
├── compose.yaml
├── nginx
│   ├── Dockerfile
│   └── nginx.conf
└── web
    ├── Dockerfile
    ├── package.json
    └── server.js
