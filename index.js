const express = require('express');
const path    = require('path');
const app     = express();
const PORT    = process.env.PORT || 8080;

// Serve static files from /public
app.use(express.static(path.join(__dirname, 'public')));

// API endpoint to return current server time
app.get('/api/time', (req, res) => {
  res.json({ time: new Date().toLocaleString() });
});

// Fallback for client-side routing (if needed)
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'public/index.html'));
});

app.listen(PORT, () => {
  console.log(`🚀 Server listening on port ${PORT}`);
});
