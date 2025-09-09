import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

dias = np.array(['Segunda','Terca','Quarta','Quinta','Sexta','Sabado','Domingo'])
temperatura = np.array([16,17,20,25,31,8,20])

data = {
    'Dia': dias,
    'Temperatura': temperatura
}

df = pd.DataFrame(data)
print(df)

media_temp = df['Temperatura'].mean()
print(f'A média entre as temperaturas é de : {media_temp:.2f}')

plt.figure(figsize=(8,5))
plt.plot(df['Dia'], df['Temperatura'], label='Temperatura')
plt.title('Temperatura')
plt.xlabel('Dias da Semana')
plt.ylabel('Temperatura em °C')
plt.legend()
plt.show()
