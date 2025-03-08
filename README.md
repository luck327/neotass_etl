# 🚀 Projeto ETL - Neotass Marketing

## 📌 Descrição
Este projeto faz parte de um desafio proposto pela Neotass Marketing, que busca integrar e transformar dados de oportunidades de negócio e vendas (sellout) em um formato estruturado e pronto para análises avançadas.

Utilizando **Python**, desenvolvemos um processo **ETL (Extract, Transform, Load)** que carrega dados de arquivos JSON e Parquet, realiza a transformação necessária e salva os resultados em um formato pronto para análise.

## 📂 Estrutura dos Dados

Os dados utilizados no projeto vêm de duas fontes principais:

- **`registros_oportunidades.json`**: Contém informações sobre oportunidades de negócios registradas pelos parceiros.
- **`sellout.parquet`**: Inclui os registros de vendas realizadas pelos parceiros, com detalhes sobre produtos vendidos, valores e datas.

Após a transformação, os dados são estruturados em duas tabelas factuais:

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

## 📌 Como Executar o Projeto
1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/neotass-etl.git
   ```
2. Instale as dependências:
   ```bash
   pip install -r requirements.txt
   ```
3. Execute o script:
   ```bash
   python etl_neotass.py
   ```

Os arquivos transformados serão salvos na pasta `output/`.

## 📈 Resultados
O projeto entrega os arquivos finais em formato `.xlsx`, prontos para análise e integração com ferramentas de BI.

📌 **Arquivos gerados:**
- `fato_registro_oportunidade.xlsx`
- `fato_sellout.xlsx`

## 📢 Considerações Finais
Este projeto demonstra a importância de um processo bem estruturado de **ETL** para garantir a qualidade e acessibilidade dos dados para análises estratégicas.

---
📧 Em caso de dúvidas ou sugestões, entre em contato!

