from fastapi import FastAPI

app = FastAPI(title="Sample Service on Cloud Run")


@app.get("/")
async def hello_world(name: str = "World"):
    return "Hello {}!".format(name)


if __name__ == "__main__":
    import uvicorn

    uvicorn.run(app, host="0.0.0.0", port=8080, log_level="debug", reload=True)
