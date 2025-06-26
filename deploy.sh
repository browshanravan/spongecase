#!/bin/bash
# Purpose: To deploy the App to Cloud Run.

# Google Cloud Project ID
PROJECT=my-google-cloud-project

# Google Cloud Region
LOCATION=us-central1

# Deploy app from source code
gcloud run deploy simple-app --source . --region=$LOCATION --project=$PROJECT --allow-unauthenticated