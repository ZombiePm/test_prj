const http = require('http');
const fs = require('fs');
const path = require('path');

const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
    console.log(`Request: ${req.method} ${req.url}`);
    
    // Always serve index.html for any request (simple approach)
    fs.readFile(path.join(__dirname, 'index.html'), (err, data) => {
        if (err) {
            console.error('Error reading file:', err);
            res.writeHead(500);
            res.end('Error loading page');
            return;
        }
        
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.end(data);
    });
});

server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
        console.log(`Access the application at: http://localhost:${PORT}`);
    console.log('Open your browser and navigate to the URL above to test the GREEN-API interface');
});