# cloudrun-fastapi-sample
Build and deploy a sample FastAPI service to GCP Cloud Run

# Commands
## Build

```shell
docker build -t cloudrun-fastapi-sample .
```

## Local Run

```shell
docker run -p 8000:8080 cloudrun-fastapi-sample
```

## Deploy to Cloud Run

```shell
gcloud run deploy --image gcr.io/<YOUR PROJECT_NAME>/cloudrun-fastapi-sample
```