from fastapi import FastApi 

app = FastApi()

@app.get("/")
def read_root():
    return {"mensagem": "Olá, Docker + FastApi"}

@app.get("/saudacao/{nome}")
def saudar(nome: str):
    return {"mensagem": f"Olá, {nome}!"}