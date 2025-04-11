/**
 * Web application configuration
 * Copy this file to config.js and update the values according to your setup
 */

const config = {
  // Backend API connection
  api: {
    // Change this to point to your Docker host running the backend
    baseUrl: 'http://localhost:8080',
    
    // Timeout for API requests in milliseconds
    timeout: 10000,
    
    // Headers to include with API requests
    headers: {
      'Content-Type': 'application/json',
    },
  },
  
  // Web server settings
  server: {
    port: 3000,
    host: '0.0.0.0',
  },
  
  // Feature flags
  features: {
    enableRealTimeTracking: true,
    enableNotifications: true,
  },
};

module.exports = config;
