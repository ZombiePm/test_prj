# GREEN-API Test Assignment

## Project Overview
This is a test assignment for the DevOps Developer position. It implements an HTML interface for testing GREEN-API methods.

## Features Implemented
- ✅ Connection parameters section (idInstance and ApiTokenInstance)
- ✅ Four API method buttons: getSettings, getStateInstance, sendMessage, sendFileByUrl
- ✅ Readonly response field for displaying API results
- ✅ Clean, professional UI design
- ✅ Error handling and user feedback

## How to Use

### Local Testing
1. Make sure Node.js is installed
2. Run `node server.js` to start the local server
3. Open `http://localhost:3000` in your browser

### Production Deployment
1. Push to GitHub repository
2. Deploy to any static hosting service (GitHub Pages, Netlify, Vercel, etc.)
3. The `index.html` file can run standalone without the server

## API Methods

### getSettings
Retrieves current instance settings

### getStateInstance
Gets the current state of the WhatsApp instance

### sendMessage
Sends a text message to a specified phone number
- Prompts for phone number (with country code)
- Prompts for message content

### sendFileByUrl
Sends a file from URL to a specified phone number
- Prompts for phone number (with country code)
- Prompts for file URL
- Prompts for filename (optional)

## Files Included
- `index.html` - Main HTML interface with embedded JavaScript
- `server.js` - Simple Node.js server for local testing
- `DEPLOYMENT.md` - This deployment guide

## Deployment Options

### GitHub Pages
1. Create a new repository on GitHub
2. Push this code to the repository
3. Enable GitHub Pages in repository settings
4. Your site will be available at `https://username.github.io/repository-name`

### Netlify
1. Sign up at netlify.com
2. Drag and drop the project folder
3. Site will be deployed automatically

### Vercel
1. Sign up at vercel.com
2. Import your GitHub repository
3. Deploy with one click

## Video Recording Tips
When recording your demonstration video:
1. Show the interface with connection parameters entered
2. Demonstrate each API method in sequence
3. Show the response outputs
4. Keep the video under 2 minutes
5. Explain what each method does briefly

## Submission Checklist
- [ ] Repository pushed to GitHub
- [ ] HTML page published online
- [ ] Video demonstration recorded
- [ ] Resume prepared in PDF format
- [ ] All links collected for email submission

## Contact
For any questions about this implementation, please contact via Telegram.