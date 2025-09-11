import pandas as pd

df = pd.read_csv("dados_nao_tratados.csv")
df["data_inscricao"] = pd.to_datetime(df["data_inscricao"], errors='coerce') 
df["idade"] = pd.to_numeric(df["idade"], errors='coerce').astype('Int64')
df["ativo"] = df["ativo"].str.strip().str.lower().map({
    'sim': True, 'true': True, 'yes': True, 
    'não': False, 'nao': False, 'false': False, 
    'e': None  })
df["nota"] = pd.to_numeric(df["nota"], errors='coerce').astype('Float64')

df = df.dropna()

df.to_csv("dados_tratados.csv", index=False)

print("Arquivo 'dados_tratados.csv' salvo com sucesso!")
