-- Criando o banco de dados chamado "vendas_db" caso ele ainda não exista
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'vendas_db')
BEGIN
    CREATE DATABASE vendas_db;
END
GO

-- Indicando que vamos utilizar o banco de dados recém-criado
USE vendas_db;
GO

-- Criando a tabela "fato_sellout", que armazenará informações sobre vendas realizadas
CREATE TABLE fato_sellout (
    id_sellout INT IDENTITY(1,1) PRIMARY KEY, -- Chave primária, identificador único da venda
    id_parceiro INT NULL,  -- Identificador do parceiro de negócio (pode ser nulo)
    id_produto INT NULL,   -- Identificador do produto vendido (pode ser nulo)
    data_fatura DATETIME NULL,  -- Data da venda (pode ser nulo)
    quantidade INT NULL,  -- Quantidade de produtos vendidos (pode ser nulo)
    nf VARCHAR(50) NULL,  -- Número da nota fiscal (pode ser nulo)
    nome_fantasia VARCHAR(255) NULL,  -- Nome fantasia do parceiro (pode ser nulo)
    CNPJ_Parceiro VARCHAR(18) NULL,  -- CNPJ do parceiro (pode ser nulo)
    Telefone VARCHAR(20) NULL,  -- Telefone do parceiro (pode ser nulo)
    Categoria VARCHAR(100) NULL,  -- Categoria do produto (pode ser nulo)
    Nome_Produto VARCHAR(255) NULL,  -- Nome do produto (pode ser nulo)
    Valor_Unitario DECIMAL(18,2) NULL  -- Valor unitário do produto (pode ser nulo)
);
GO

-- Criando a tabela "fato_registro_oportunidade", que armazena registros de oportunidades de vendas
CREATE TABLE fato_registro_oportunidade (
    id_oportunidade INT IDENTITY(1,1) PRIMARY KEY, -- Chave primária, identificador único da oportunidade
    id_parceiro INT NULL,  -- Identificador do parceiro de negócio (pode ser nulo)
    id_produto INT NULL,  -- Identificador do produto da oportunidade (pode ser nulo)
    Data_Registro DATE NOT NULL,  -- Data do registro da oportunidade (obrigatório)
    Quantidade INT NOT NULL,  -- Quantidade estimada para a oportunidade (obrigatório)
    Status VARCHAR(50) NOT NULL,  -- Status da oportunidade (exemplo: "Aberta", "Fechada") (obrigatório)
    Nome_Fantasia VARCHAR(255) NOT NULL,  -- Nome fantasia do parceiro (obrigatório)
    CNPJ_Parceiro VARCHAR(18) NOT NULL,  -- CNPJ do parceiro (obrigatório)
    Telefone_Parceiro VARCHAR(20) NOT NULL,  -- Telefone do parceiro (obrigatório)
    Categoria_Produto VARCHAR(100) NOT NULL,  -- Categoria do produto (obrigatório)
    Nome_Produto VARCHAR(255) NOT NULL,  -- Nome do produto (obrigatório)
    Valor_Unitario DECIMAL(18,2) NOT NULL  -- Valor unitário do produto (obrigatório)
);
GO

-- Criando chaves estrangeiras para relacionar as tabelas corretamente
ALTER TABLE fato_sellout
ADD CONSTRAINT FK_fato_sellout_parceiro FOREIGN KEY (id_parceiro) REFERENCES fato_registro_oportunidade(id_oportunidade),
    CONSTRAINT FK_fato_sellout_produto FOREIGN KEY (id_produto) REFERENCES fato_registro_oportunidade(id_produto);
GO

