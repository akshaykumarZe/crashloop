console.log("Starting the application...");

// Force the application to crash after 5 seconds
setTimeout(() => {
  console.log("Crashing the application intentionally...");
  process.exit(1); // Exit with a non-zero code to indicate failure
}, 5000);
