const express = require('express');
const app = express();
const port = process.env.PORT || 3000;  // Environment-based configuration

// Root endpoint - provides basic app information
app.get('/', (req, res) => {
  res.json({
    message: 'Hello from AWS CI/CD Pipeline!',
    version: '1.0.0',              // Version tracking for deployments
    timestamp: new Date().toISOString()  // Helps verify fresh deployments
  });
});

// Health check endpoint - critical for load balancers and monitoring
app.get('/health', (req, res) => {
  res.status(200).json({ status: 'healthy' });
});

// Export both app and server for testing purposes
const server = app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});

module.exports = { app, server };  // Allows clean testing and graceful shutdown
