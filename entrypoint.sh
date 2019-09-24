#!/bin/sh -l

# Show env info
node -v
hugo version

# Build site
hugo

# Publish to Firebase
firebase use --token $FIREBASE_DEPLOY_KEY alias
firebase deploy -m "Pipeline $CI_PIPELINE_ID, build $CI_BUILD_ID" --non-interactive --token $FIREBASE_DEPLOY_KEY
mkdir .public
cp -r * .public
mv .public public