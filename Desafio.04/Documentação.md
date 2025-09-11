# Desafio4

- Para a resolução do desafio, foi utilizada a biblioteca pandas do Python, que permitiu o tratamento completo dos dados solicitados. O processo foi estruturado nas seguintes etapas:

- 1 Carregamento dos Dados: O arquivo dados_nao_tratados.csv foi carregado em um DataFrame.
- 2 Formatação de Colunas:

- data_inscricao: A coluna foi convertida para o formato de data com o comando pd.to_datetime. Valores que não puderam ser convertidos foram transformados em nulos (NaT).

- idade e nota: Utilizando pd.to_numeric, estas colunas foram convertidas para tipos numéricos (Int64 e Float64, respectivamente). Da mesma forma, dados em formatos inválidos tornaram-se nulos.

- ativo: A coluna foi normalizada através de uma sequência de comandos: remoção de espaços (.str.strip()), conversão para minúsculas (.str.lower()) e, por fim, o mapeamento (.map()) de suas variações textuais para valores booleanos (True/False) ou nulos.

- Limpeza Final: O comando df.dropna() foi aplicado para remover todas as linhas que continham qualquer valor nulo gerado nas etapas anteriores, garantindo um conjunto de dados íntegro.

- Salvamento do Resultado: Por fim, o DataFrame tratado foi salvo no novo arquivo dados_tratados.csv com o comando df.to_csv("dados_tratados.csv", index=False). Uma mensagem de sucesso foi exibida no console para confirmar a conclusão da operação.
