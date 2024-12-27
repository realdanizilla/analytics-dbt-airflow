# bootcamp-aberto-aovivo

Projeto de ELT 
- Airbyte faz o extract e o load
- dbt-core faz o transform
- postgres é o db hosteado no render
- airflow automatiza as tarefas de sincronizar o google sheets com o postgres e rodar as transformações

Esse é um projeto de portfolio, onde integramos 3 fontes de dados (GA4, Facebook, Planilhas)

Essa e a arquitetura do projeto

![pics](https://github.com/lvgalvao/bootcamp-aberto-aovivo/blob/main/pics/foto.png?raw=true)

Integramos via Airbyte, salvamos em um postgres, processamos via DBT-Core e orquestramos via Airflow

Tudo isso do zero, em 3 dias

Jornada é braba
