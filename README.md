# k8BuildPipeline Cloud Resources Provisioning (IaC)

This repo contains infrastructure as code (IaC) for k8BuildPipeline cloud resources dependencies like:

  - GCP DNS mananged zone
  - GCP static public IP address
  - GCP GKE Cluster

Setup:

  - Create a google cloud project and service account
  - Enable Google Cloud DNS API for given service account
  - Enable Google Kubernetes Engine API for given service account
  - Manually create managedZone PROJECT_NAME
  - Update stg & prod env variables
  - ./setupGcloud
  - cd environments/stg/ && make provision

More setup that I want to record before I forget (TODO: Merge into setup):
  - stg/ProdEnvVars.sh example:
    - export GOOGLE_COMPUTE_REGION='imaregion'
    - export GOOGLE_PROJECT_ID='imaprojectname'
    - export BUCKET_NAME='imabucketname'
    - export GCP_SERVICE_ACCOUNT_KEY='iamasecret'
  - change service account name in .boto files
