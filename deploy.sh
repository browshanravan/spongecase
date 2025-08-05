#!/bin/bash
# Purpose: To deploy the App to Cloud Run.

# Google Cloud Project ID
PROJECT=my-cloud-project-name

# Google Cloud Region
LOCATION=us-central1

#Docker repository name which can be found in GCP Artifacts
REPO=api-repo

#Image/app name
IMAGE=spongecase-app

#After ensuring gcloud is authenticated (gcloud auth login) run below
gcloud config set project $PROJECT

#Enable required APIs
gcloud services enable artifactregistry.googleapis.com run.googleapis.com

#Create Docker repository in Artifact Registry
gcloud artifacts repositories create $REPO --repository-format=docker --location=us-central1

#Authenticate Docker with GCP (--quiet avoids having to select Y/n)
gcloud auth configure-docker $LOCATION-docker.pkg.dev --quiet

#Generate an image using Cloud Native Buildpacks directly and Pushes the image to your specified Artifact Registry repo
gcloud builds submit --pack image=$LOCATION-docker.pkg.dev/$PROJECT/$REPO/$IMAGE:latest .

#Deploy the app
gcloud run deploy $IMAGE --image $LOCATION-docker.pkg.dev/$PROJECT/$REPO/$IMAGE:latest --region=$LOCATION --project=$PROJECT --allow-unauthenticated --quiet

##ALTERNATIVELY
#Use --source . convention
#Cloud Run triggers Cloud Build to auto-containerize the code using Buildpacks.
#Cloud Build detects Python + Streamlit because of your Procfile
#Cloud Build generates a temporary Dockerfile internally and generates an image and detects requirements.txt and installs dependencies
#Cloud Build pushes the image to Artifact Registry automatically.
#The repo the image gets pushed to is called cloud-run-source-deploy
# gcloud run deploy $IMAGE --source . --region=$LOCATION --project=$PROJECT --allow-unauthenticated --quiet