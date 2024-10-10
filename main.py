from fastapi import FastAPI

app = FastAPI()

# make scafold


@app.get("/")
def hello():
    return {"hello": "world"}
