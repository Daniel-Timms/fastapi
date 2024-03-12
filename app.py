# app.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/{name}")
def read_name(name: str):
 return {"message": f"Hello, {name}"}
