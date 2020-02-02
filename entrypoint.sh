#!/bin/sh -x

# Show env info
node -v
hugo version

# Use input parameters
FIREBASE_DEPLOY_KEY=$1
ALIAS=${2:-alias}

# Build site
hugo

# Publish to Firebase
firebase use --token $FIREBASE_DEPLOY_KEY $ALIAS
firebase deploy -m "Trigger: $GITHUB_EVENT_NAME, commit SHA: $GITHUB_SHA" --non-interactive --token $FIREBASE_DEPLOY_KEY
