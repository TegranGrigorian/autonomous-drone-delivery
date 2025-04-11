# Autonomous Drone Delivery System

This project implements an autonomous drone delivery system for medical supplies, consisting of:
- Web-based frontend for delivery requests
- Backend server for handling requests and drone management
- Drone software for autonomous navigation and delivery

## Directory Structure
- `backend/`: Server-side code for request management
- `frontend/`: User interface for requesting deliveries
- `drone/`: Software that runs on the drones themselves
- `deployment/`: Configuration for deploying services
- `simulation/`: Tools for testing drone operations virtually
- `docs/`: System documentation
- `scripts/`: Utility scripts for development and deployment
- `tests/`: Automated test suites

## Getting Started
See `docs/setup/installation-guide.md` for installation and setup instructions.

# Autonomous Drone Delivery

## Deployment Setup

### Prerequisites
- VM for hosting the webserver
- Docker and Docker Compose installed on the VM or a separate machine for the backend
- Git installed on both machines

### Setup Instructions

#### 1. Clone the Repository
```bash
git clone https://github.com/your-username/autonomous-drone-delivery.git
cd autonomous-drone-delivery
```

#### 2. VM Webserver Setup
1. Navigate to the web directory:
   ```bash
   cd web
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Copy the example config and adjust it for your environment:
   ```bash
   cp config.example.js config.js
   ```
4. Update the `config.js` with your backend Docker host address
5. Start the webserver:
   ```bash
   npm start
   ```

#### 3. Docker Backend Setup
1. Navigate to the project root
2. Launch the backend services using Docker Compose:
   ```bash
   docker-compose up -d
   ```

#### 4. Verify Connectivity
1. Make sure the webserver can communicate with the backend services
2. Open the web UI in your browser and check for proper functionality

## Configuration Details
The system is configured to allow separation between the frontend webserver and backend services. Key configuration points:
- The webserver connects to backend services using the address specified in `config.js`
- Backend services communicate with each other via Docker's internal network
- Environment variables can be adjusted in the `.env` file

## Troubleshooting
- If the webserver cannot connect to the backend, verify network settings and firewall rules
- Check Docker logs with `docker-compose logs`
- Ensure all services are running with `docker-compose ps`
