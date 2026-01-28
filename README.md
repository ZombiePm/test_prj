# GREEN-API Test Interface

This is a test assignment for the DevOps Developer position. It implements an HTML interface for testing GREEN-API methods, designed for deployment on Timeweb Cloud App Platform.

## Features Implemented

- ✅ Connection parameters section (idInstance and ApiTokenInstance)
- ✅ Four API method buttons: getSettings, getStateInstance, sendMessage, sendFileByUrl
- ✅ Readonly response field for displaying API results
- ✅ Clean, professional UI design
- ✅ Error handling and user feedback

## Prerequisites

- Node.js >= 14.0.0
- Git
- Timeweb Cloud account with App Platform access

## Local Development

1. Clone or download this repository
2. Install dependencies:
   ```bash
   npm install
   ```
3. Start the development server:
   ```bash
   npm start
   ```
4. Open your browser and navigate to `http://localhost:3000`

## Deployment to Timeweb Cloud App Platform

### Step 1: Prepare Your Repository

1. Make sure your code is committed:
   ```bash
   git add .
   git commit -m "Prepare for App Platform deployment"
   ```

2. Push to your Git repository (GitHub, GitLab, or Bitbucket):
   ```bash
   git push origin main
   ```

### Step 2: Configure App Platform

1. Log in to your [Timeweb Cloud Control Panel](https://timeweb.cloud/)
2. Navigate to **App Platform** service
3. Click **Create Application**
4. Connect your Git repository:
   - Select your Git provider (GitHub, GitLab, or Bitbucket)
   - Choose your repository
5. Configure application settings:
   - **Framework**: Node.js
   - **Build Command**: `npm install`
   - **Run Command**: `npm start`
   - **Port**: The platform will automatically detect the PORT environment variable
6. Review and deploy

### Step 3: Access Your Application

After successful deployment:
- Your application will be available at the assigned URL
- Timeweb Cloud provides a free technical domain with SSL Let's Encrypt
- You can configure custom domains in the control panel

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

## Project Structure

```
.
├── app.yaml          # App Platform configuration
├── package.json      # Node.js dependencies and scripts
├── server.js         # Node.js server implementation
├── index.html        # Main HTML interface
└── README.md         # This file
```

## Environment Variables

The application uses the following environment variables:

- `PORT` - Server port (automatically set by App Platform)
- `NODE_ENV` - Environment mode (set to 'production' in app.yaml)

## Troubleshooting

### Common Issues

1. **Application not starting**
   - Check logs in Timeweb Cloud control panel
   - Ensure package.json has correct "start" script
   - Verify Node.js version compatibility

2. **Port binding issues**
   - Make sure server.js uses `process.env.PORT`
   - Don't hardcode port numbers

3. **Deployment fails**
   - Check build logs for dependency installation errors
   - Ensure all required files are committed to Git

### Getting Help

For issues with the application:
- Check browser console for JavaScript errors
- Verify GREEN-API credentials are correct
- Test API endpoints directly using Postman or curl

For deployment issues:
- Contact Timeweb Cloud support
- Check App Platform documentation
- Review deployment logs

## License

This project is licensed under the MIT License.