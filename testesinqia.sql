-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/06/2024 às 19:24
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `testesinqia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidades`
--

CREATE TABLE `cidades` (
  `Codigo_Cidade` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Cep_Inicial` varchar(10) NOT NULL,
  `Cep_Final` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cidades`
--

INSERT INTO `cidades` (`Codigo_Cidade`, `Nome`, `Estado`, `Cep_Inicial`, `Cep_Final`) VALUES
(17, 'Bastos', 'SP', '17690-000', '17699-999'),
(18, 'Tupã', 'SP', '17600-001', '17629-999'),
(19, 'Iacri', 'SP', '17680-000', '17689-999'),
(20, 'Jardim Arco-Iris', 'SP', '04863600', '04863640'),
(21, 'Rancharia', 'SP', '19600-000', '19639-999'),
(24, 'Londrina', 'PR', '86000-001', '86124-999'),
(28, 'Curitiba', 'PR', '80000-001', '82999-999');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `Codigo_Cliente` int(11) NOT NULL,
  `CGC_CPF_Cliente` varchar(20) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Bairro` varchar(100) DEFAULT NULL,
  `Complemento` varchar(100) DEFAULT NULL,
  `E_mail` varchar(100) DEFAULT NULL,
  `Codigo_Cidade` int(11) DEFAULT NULL,
  `Cep` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`Codigo_Cliente`, `CGC_CPF_Cliente`, `Nome`, `Telefone`, `Endereco`, `Bairro`, `Complemento`, `E_mail`, `Codigo_Cidade`, `Cep`) VALUES
(16, '42557023817', 'Lucas de Oliveira Nepomuceno', '14998403148', 'Rua Eleazar Andrade Pessoa', 'Jd. Vale do Sol', 'Casa', 'lucasnepomuceno2008@hotmail.com', 17, '17690-000'),
(17, '44785281871', 'Roberto Alexandre Gustavo da Luz', '14983052714', 'Avenida Gaspar Ricardo 745', 'Centro', 'Casa', 'roberto_daluz@vizzacchi.com.br', 17, '17690-000'),
(18, '07711736878', 'Cauê Sebastião Diogo Cardoso', '1439413199', 'Avenida Gaspar Ricardo 745', 'Centro', 'Casa', 'caue_cardoso@fazergourmet.com.br', 17, '17690-000'),
(19, '01742284817', 'Malu Rosa Tatiane Corte Real', '14984932150', 'Rua Timbiras', 'Centro', 'Casa', 'malu_rosa_cortereal@focusdm.com.br', 18, '17600-001'),
(21, '00363365990', 'Maria Betina Márcia Brito', '4338052271', 'Rua Paraguai', 'Vila Larsen 1', 'Casa', 'maria_brito@academiahct.com.br', 24, '86000-001'),
(22, '40058608931', 'Bruna Milena Simone Silva', '4129334217', 'Rua Professora Terezita Faria dos Santos Lima', 'Pilarzinho', 'Casa', 'bruna.milena.silva@viavaleseguros.com.br', 28, '80000-001');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`Codigo_Cidade`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Codigo_Cliente`),
  ADD KEY `Codigo_Cidade` (`Codigo_Cidade`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `Codigo_Cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Codigo_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`Codigo_Cidade`) REFERENCES `cidades` (`Codigo_Cidade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
