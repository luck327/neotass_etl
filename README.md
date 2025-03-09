# 🚀 Projeto ETL - Neotass Marketing

## 📌 Descrição
Este projeto faz parte de um desafio proposto pela Neotass Marketing, que busca integrar e transformar dados de oportunidades de negócio e vendas (sellout) em um formato estruturado e pronto para análises avançadas.

Utilizando **Python**, desenvolvemos um processo **ETL (Extract, Transform, Load)** que carrega dados de arquivos JSON e Parquet, realiza a transformação necessária e salva os resultados em um formato pronto para análise. Além disso, o processo inclui a **criação do banco de dados e suas tabelas**, garantindo um ambiente organizado para armazenamento e manipulação dos dados.

## 📚 Estrutura dos Dados

Os dados utilizados no projeto vêm de duas fontes principais:

- **`registros_oportunidades.json`**: Contém informações sobre oportunidades de negócios registradas pelos parceiros.
- **`sellout.parquet`**: Inclui os registros de vendas realizadas pelos parceiros, com detalhes sobre produtos vendidos, valores e datas.

Após a transformação, os dados são estruturados em duas tabelas factuais no banco de dados **`vendas_db`**:

### **Tabela fato_registro_oportunidade**
| Coluna           | Descrição |
|-----------------|------------|
| id_oportunidade | Identificador único da oportunidade |
| id_parceiro     | Identificador do parceiro |
| id_produto      | Identificador do produto |
| data_registro   | Data do registro da oportunidade |
| quantidade      | Quantidade de produtos da oportunidade |
| valor_total     | Valor total da oportunidade |
| status         | Status da oportunidade |

### **Tabela fato_sellout**
| Coluna         | Descrição |
|---------------|------------|
| id_sellout    | Identificador único da venda |
| id_parceiro   | Identificador do parceiro |
| id_produto    | Identificador do produto |
| data_fatura   | Data da venda |
| nf           | Número da nota fiscal |
| quantidade    | Quantidade vendida |
| valor_total   | Valor total da venda |

## 🛠 Tecnologias Utilizadas
- **Python**
- **Pandas** (manipulação de dados)
- **JSON e Parquet** (formatos de entrada)
- **OpenPyXL** (exportação para Excel)
- **OS** (manipulação de diretórios)
- **SQL Server** (armazenamento e gerenciamento dos dados)

## 📌 Como Executar o Projeto
1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/neotass-etl.git
   ```
2. Instale as dependências:
   ```bash
   pip install -r requirements.txt
   ```
3. Execute o script ETL, que também criará o banco de dados e fará a ingestão dos dados:
   ```bash
   python etl_neotass.py
   ```

Os arquivos transformados serão salvos na pasta `output/`.

## 📊 Resultados
O projeto entrega os arquivos finais em formato `.xlsx`, prontos para análise e integração com ferramentas de BI.

📌 **Arquivos gerados:**
- `fato_registro_oportunidade.xlsx`
- `fato_sellout.xlsx`

## 📢 Criação do Banco de Dados

Durante a execução do script, é feita a **criação automática do banco de dados** no SQL Server, caso ele ainda não exista. O script executa os seguintes passos:

1. Verifica se o banco **`vendas_db`** já existe. Caso contrário, ele é criado.
2. Cria as tabelas **`fato_registro_oportunidade`** e **`fato_sellout`**.
3. Insere os dados processados nessas tabelas.

Dessa forma, os dados ficam organizados em um ambiente relacional pronto para consultas e integração com outras ferramentas.

## 📣 Considerações Finais
Este projeto demonstra a importância de um processo bem estruturado de **ETL** para garantir a qualidade e acessibilidade dos dados para análises estratégicas.

---
📧 Em caso de dúvidas ou sugestões, entre em contato!

