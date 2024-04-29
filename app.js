const express = require('express');
const app = express();
const port = 3000;

// Handling GET request to the root endpoint
app.get('/', (req, res) => {
  // Hardcoded static content
  const staticContent = 'This is some hardcoded static content.';
  // Sending the static content as the response
  res.send(staticContent);
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on ${port}`);
});
