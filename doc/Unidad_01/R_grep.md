# Respuestas

1. ¿Qué archivos contienen la palabra "difference"? 

`grep -r -H "difference" .` o `grep -F difference ./*.txt`

<img width="352" alt="Captura de Pantalla 2022-05-23 a la(s) 15 22 31" src="https://user-images.githubusercontent.com/25624961/169899755-bef783d0-1af2-44f0-9f63-8428868d4b6e.png">



2. ¿Cuántas veces aparece la palabra “Premium” en el archivo `Diamonds_fix.txt`?  

grep -c -e "Premium" Diamonds_fix.txt

<img width="450" alt="Captura de Pantalla 2022-05-23 a la(s) 15 24 53" src="https://user-images.githubusercontent.com/25624961/169900104-725240ff-29cd-4f81-9fbf-7dc5c8401d62.png">


3. ¿Cuántas líneas en el archivo `Diamonds_fix.txt` no incluyen la frase “Very good”?  

grep -v -c -e "Very good" Diamonds_fix.txt 


<img width="550" alt="Captura de Pantalla 2022-05-23 a la(s) 15 27 07" src="https://user-images.githubusercontent.com/25624961/169900415-59e25143-87e1-48d8-b2cb-b8dccb6510d7.png">

