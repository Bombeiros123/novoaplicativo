-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/12/2023 às 16:27
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bombeiro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ambulancia`
--

CREATE TABLE `ambulancia` (
  `usb` varchar(40) DEFAULT NULL,
  `ocorrencia` varchar(40) DEFAULT NULL,
  `desp` varchar(40) DEFAULT NULL,
  `hch` varchar(40) DEFAULT NULL,
  `km` varchar(40) DEFAULT NULL,
  `ir` varchar(40) DEFAULT NULL,
  `ps` varchar(40) DEFAULT NULL,
  `cod` varchar(40) DEFAULT NULL,
  `idPac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ambulancia`
--

INSERT INTO `ambulancia` (`usb`, `ocorrencia`, `desp`, `hch`, `km`, `ir`, `ps`, `cod`, `idPac`) VALUES
('1', '12', '', '', '', 'Cód. IR', NULL, '', 10),
('1', '2', '2', '23', '12', 'Cód. IR', 'Cód. PS', '6', 11),
('5', '8', '486', '56', '32', 'Cód. IR', 'Cód. PS', '96', 12),
('4', '4', '4', '4', '4', 'Cód. IR', 'Cód. PS', '4', 13),
('3', '2', '2', '2', '2', 'Cód. IR', 'Cód. PS', '2 ', 14),
('6', '6', '6', '6', '6', 'Cód. IR', 'Cód. PS', '6', 15),
('54', '5', '57', '7575', '5757', 'Cód. IR', 'Cód. PS', '57', 16),
('15', '3', '26', '151', '151', 'Cód. IR', 'Cód. PS', '151', 17),
('5', '5', '5', '5', '5', 'Cód. IR', 'Cód. PS', '5', 18),
('54', '45', '45', '45', '45', 'Cód. IR', 'Cód. PS', '45', 19),
('2', '2', '2', '2', '2', 'Cód. IR', 'Cód. PS', '2', 20),
('4', '1', '1', '14', '12', 'Cód. IR', 'Cód. PS', '1', 21);

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `Abertura_ocular` varchar(20) DEFAULT NULL,
  `Resposta_verbal` varchar(20) DEFAULT NULL,
  `Resposta_motora` varchar(20) DEFAULT NULL,
  `idPac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avaliacao`
--

INSERT INTO `avaliacao` (`Abertura_ocular`, `Resposta_verbal`, `Resposta_motora`, `idPac`) VALUES
('ESPONTÂNEA', 'ORIENTADO', 'OBEDECE COMANDOS', 10),
('ESPONTÂNEA', 'PALAVRAS INAPROPRIAD', 'NENHUMA', 11),
('ESPONTÂNEA', 'PALAVRAS INAPROPRIAD', 'NENHUMA', 11),
('NENHUMA', 'CONFUSO', 'MOVIMENTO DE RETIRAD', 12),
('NENHUMA', ' PALAVRAS INCOMPREES', 'OBEDECE COMANDOS', 13),
('ESPONTÂNEA', 'ORIENTADO', 'OBEDECE COMANDOS', 14),
('ESPONTÂNEA', 'ORIENTADO', 'OBEDECE COMANDOS', 15),
('ESPONTÂNEA', 'ORIENTADO', 'OBEDECE COMANDOS', 16),
('NENHUMA', 'NENHUMA', 'NENHUMA', 17),
('ESPONTÂNEA', 'ORIENTADO', 'OBEDECE COMANDOS', 18),
('ESPONTÂNEA', 'ORIENTADO', 'OBEDECE COMANDOS', 19),
('ESPONTÂNEA', 'NENHUMA', ' EXTENSÃO ANORMAL', 20),
('ESTÍMULO DOLOROSO', 'CONFUSO', ' FLEXÃO ANORMAL', 21);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `CPF` int(11) NOT NULL,
  `Senha` varchar(40) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `adm` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`Id`, `Nome`, `CPF`, `Senha`, `Email`, `adm`) VALUES
(1428, 'Maria Eduarda', 89245, '123', 'mariae@gmail.com', 1),
(1429, 'lucas', 56842, '123', '', 0),
(1430, 'maria ', 123, '123', 'maria@gmail.com', 0),
(1431, 'maria ', 123456, '1', 'maria@gmail.com', 0),
(1432, 'Wilson', 2147483647, '5656', 'wilsondouglas@gmail.com', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_p`
--

CREATE TABLE `dados_p` (
  `idPac` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `sexo` varchar(2) DEFAULT NULL,
  `nome_hospital` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  `idade_pa` varchar(3) DEFAULT NULL,
  `acompanhante` varchar(45) DEFAULT NULL,
  `idade_ac` varchar(3) DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dados_p`
--

INSERT INTO `dados_p` (`idPac`, `data`, `sexo`, `nome_hospital`, `nome`, `CPF`, `idade_pa`, `acompanhante`, `idade_ac`, `local`) VALUES
(1, '2023-12-12', 'f', 'SUS', 'Maria ', '23', '12', 'camila', '34', '0'),
(2, '2023-12-12', 'f', 'SUS', 'Maria ', '23', '12', 'camila', '34', 'rua kakak'),
(3, '2023-12-01', 'f', 'SUS', 'Maria ', '', '', '', '', ''),
(4, '2023-12-01', 'f', 'SUS', 'Maria ', '', '', '', '', ''),
(5, '2023-12-01', 'f', 'SUS', 'Maria ', '', '', '', '', ''),
(6, '2023-12-01', 'f', 'SUS', 'Maria ', '', '', '', '', ''),
(7, '2023-12-01', 'f', 'SUS', 'Maria ', '', '', '', '', ''),
(8, '2023-12-01', 'f', 'SUS', 'Maria ', '', '', '', '', ''),
(9, '2023-12-01', 'f', 'SUS', 'Maria ', '', '', '', '', ''),
(10, '2023-12-01', 'f', 'SUS', 'Maria ', '', '', '', '', ''),
(11, '2023-12-14', 'f', 'SUS', 'Maria ', '23', '123', 'mae', '45', 'rua'),
(12, '2023-12-28', 'm', 'dona helena', 'roberto', '45', '456', 'pai', '68', 'rua santo antonio'),
(13, '2023-12-21', 'f', 'SUS', 'Maria ', '25', '342', 'gfg', '54', 'dfgdg'),
(14, '2023-12-14', 'm', 'SUS', 'Maria ', '25', '12', 'camila', '43', '4343'),
(15, '2023-12-14', 'm', 'SUS', 'Maria ', '25', '12', 'camila', '43', '4343'),
(16, '2023-12-28', 'f', 'SUS', 'roberto', '45', '45', 'fefe', '962', 'fefef'),
(17, '2023-12-27', 'f', 'dona helena', 'isabele', '13', '456', 'mae', '45', 'rua sakajwb'),
(18, '2024-03-15', 'm', 'sao jose', 'rodrigo', '24', '111', 'pai', '65', 'rua'),
(19, '2024-03-15', 'm', 'sao jose', 'rodrigo', '28', '111', 'pai', '65', 'rua'),
(20, '2023-12-28', 'f', 'sao jose', 'maria', '12', '124', 'ame', '45', 'rua sao paulo'),
(21, '2023-12-13', 'm', 'dona helena', 'maicol', '45', '111', 'mae', '68', 'Bar');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ffelc`
--

CREATE TABLE `ffelc` (
  `idPac` int(11) NOT NULL,
  `loc` varchar(40) DEFAULT NULL,
  `lado` varchar(40) DEFAULT NULL,
  `face` varchar(40) DEFAULT NULL,
  `tipo` varchar(40) DEFAULT NULL,
  `cabeca` varchar(20) DEFAULT NULL,
  `pescoso` varchar(20) DEFAULT NULL,
  `tant` varchar(20) DEFAULT NULL,
  `tpos` varchar(20) DEFAULT NULL,
  `genit` varchar(20) DEFAULT NULL,
  `mid` varchar(20) DEFAULT NULL,
  `mie` varchar(20) DEFAULT NULL,
  `msd` varchar(20) DEFAULT NULL,
  `mse` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ffelc`
--

INSERT INTO `ffelc` (`idPac`, `loc`, `lado`, `face`, `tipo`, `cabeca`, `pescoso`, `tant`, `tpos`, `genit`, `mid`, `mie`, `msd`, `mse`) VALUES
(0, 'rwr', 'fsa', 'fa', 'faf', 'on', 'on', 'on', 'on', NULL, 'on', 'on', 'on', 'on15'),
(0, 'rwr', 'fsa', 'fa', 'faf', 'on', 'on', 'on', 'on', NULL, 'on', 'on', 'on', 'on15'),
(0, 'rwr', 'fsa', 'fa', 'faf', 'on', 'on', 'on', 'on', NULL, 'on', 'on', 'on', 'on15'),
(0, 'rwr', 'fsa', 'fa', 'faf', 'on', 'on', 'on', 'on', NULL, 'on', 'on', 'on', 'on15'),
(0, NULL, 'fsa', 'fa', 'faf', 'on', 'on', 'on', 'on', NULL, 'on', 'on', 'on', 'on15'),
(0, NULL, 'fsa', 'fa', 'faf', 'on', 'on', 'on', 'on', NULL, 'on', 'on', 'on', 'on15'),
(0, NULL, 'fsa', 'fa', 'faf', 'on', 'on', 'on', 'on', NULL, 'on', 'on', 'on', 'on15'),
(0, 'cabeça', 'testa', 'cabelo', 'ralado', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on', 'on16'),
(0, '34', '25', 'SUS', 'dfg', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras16'),
(0, 'cabeça', 'esquerdo', 'orelha', 'mORdid', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras17'),
(0, 'testa', 'daefesrg', NULL, '1grau', '1grau', '1grau', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', '18'),
(54, '54', '54', NULL, '1grau', '1grau', '1grau', '1grau', '1grau', '1grau', '1grau', '1grau', '1grau', '19'),
(0, 'greer', 'gre', NULL, 'sem queimaduras', '1grau', '1grau', '1grau', '1grau', '1grau', '1grau', '1grau', 'sem queimaduras', '20'),
(0, 'esquerdo', 'dedinho', NULL, 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', 'sem queimaduras', '21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `objetos`
--

CREATE TABLE `objetos` (
  `idPac` int(11) NOT NULL,
  `objetos` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `objetos`
--

INSERT INTO `objetos` (`idPac`, `objetos`) VALUES
(0, '16'),
(0, '16'),
(16, 'camiseta roxa, oculos escuro e tenis '),
(17, 'NENHUM'),
(17, 'NENHUM'),
(17, ''),
(18, 'camiseta roxa, oculos escuro e tenis '),
(19, 'camiseta roxa, oculos escuro e tenis '),
(20, 'camiseta roxa, oculos escuro e tenis '),
(21, 'celular,bone,piruca');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ocorrencia`
--

CREATE TABLE `ocorrencia` (
  `causado_animais` varchar(40) DEFAULT NULL,
  `transporte` varchar(20) DEFAULT NULL,
  `desmoronamento` varchar(20) DEFAULT NULL,
  `emergencia` varchar(20) DEFAULT NULL,
  `queda_2m` varchar(20) DEFAULT NULL,
  `tentativa_suicidio` varchar(20) DEFAULT NULL,
  `queda_altura` varchar(20) DEFAULT NULL,
  `afogamento` varchar(20) DEFAULT NULL,
  `agressao` varchar(20) DEFAULT NULL,
  `atropelamento` varchar(20) DEFAULT NULL,
  `choque_eletrico` varchar(20) DEFAULT NULL,
  `desabamento` varchar(20) DEFAULT NULL,
  `domestico` varchar(20) DEFAULT NULL,
  `esportivo` varchar(20) DEFAULT NULL,
  `intoxicacao` varchar(20) DEFAULT NULL,
  `queda_bike` varchar(20) DEFAULT NULL,
  `queda_moto` varchar(20) DEFAULT NULL,
  `queda_<2m` varchar(20) DEFAULT NULL,
  `trabalho` varchar(20) DEFAULT NULL,
  `transferencia` varchar(20) DEFAULT NULL,
  `outros` varchar(40) DEFAULT NULL,
  `idPac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ocorrencia`
--

INSERT INTO `ocorrencia` (`causado_animais`, `transporte`, `desmoronamento`, `emergencia`, `queda_2m`, `tentativa_suicidio`, `queda_altura`, `afogamento`, `agressao`, `atropelamento`, `choque_eletrico`, `desabamento`, `domestico`, `esportivo`, `intoxicacao`, `queda_bike`, `queda_moto`, `queda_<2m`, `trabalho`, `transferencia`, `outros`, `idPac`) VALUES
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ATROPELAMENTO ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10),
(NULL, 'COM MEIO DE TRANSPOR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'QUEDA MOTO ', NULL, NULL, NULL, NULL, 11),
(NULL, NULL, NULL, NULL, NULL, 'TENTATIVA DE SUICIDI', NULL, 'AFOGAMENTO', NULL, NULL, 'CHOQUE ELÉTRICO ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AGRESSÃO ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13),
(NULL, 'COM MEIO DE TRANSPOR', 'DESMORONAMENTO/DESLI', 'EMERGÊNCIA MÉDICA', 'QUEDA DE ALTURA 2M', 'TENTATIVA DE SUICIDI', 'QUEDA PROPRIA ALTURA', 'AFOGAMENTO', NULL, NULL, NULL, NULL, 'DOMÉSTICO ', NULL, NULL, NULL, 'QUEDA MOTO ', NULL, 'TRABALHO ', 'TRANSFERÊNCIA ', NULL, 14),
('CAUSADO POR ANIMAIS', NULL, 'DESMORONAMENTO/DESLI', NULL, NULL, 'TENTATIVA DE SUICIDI', 'QUEDA PROPRIA ALTURA', 'AFOGAMENTO', 'AGRESSÃO ', 'ATROPELAMENTO ', 'CHOQUE ELÉTRICO ', 'DESABAMENTO ', NULL, 'ESPORTIVO ', NULL, NULL, NULL, 'QUEDA NIVEL < 2M ', NULL, NULL, NULL, 15),
('CAUSADO POR ANIMAIS', 'COM MEIO DE TRANSPOR', 'DESMORONAMENTO/DESLI', 'EMERGÊNCIA MÉDICA', 'QUEDA DE ALTURA 2M', 'TENTATIVA DE SUICIDI', 'QUEDA PROPRIA ALTURA', 'AFOGAMENTO', 'AGRESSÃO ', 'ATROPELAMENTO ', NULL, 'DESABAMENTO ', 'DOMÉSTICO ', 'ESPORTIVO ', 'INTOXICAÇÃO ', 'QUEDA BICICLETA', NULL, 'QUEDA NIVEL < 2M ', NULL, 'TRANSFERÊNCIA ', NULL, 16),
('CAUSADO POR ANIMAIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DOMÉSTICO ', NULL, NULL, NULL, 'QUEDA MOTO ', NULL, NULL, NULL, NULL, 17),
('CAUSADO POR ANIMAIS', 'COM MEIO DE TRANSPOR', 'DESMORONAMENTO/DESLI', 'EMERGÊNCIA MÉDICA', 'QUEDA DE ALTURA 2M', 'TENTATIVA DE SUICIDI', 'QUEDA PROPRIA ALTURA', 'AFOGAMENTO', 'AGRESSÃO ', 'ATROPELAMENTO ', 'CHOQUE ELÉTRICO ', 'DESABAMENTO ', 'DOMÉSTICO ', 'ESPORTIVO ', 'INTOXICAÇÃO ', 'QUEDA BICICLETA', 'QUEDA MOTO ', 'QUEDA NIVEL < 2M ', 'TRABALHO ', 'TRANSFERÊNCIA ', NULL, 18),
('CAUSADO POR ANIMAIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19),
('CAUSADO POR ANIMAIS', 'COM MEIO DE TRANSPOR', 'DESMORONAMENTO/DESLI', 'EMERGÊNCIA MÉDICA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DESABAMENTO ', NULL, 'ESPORTIVO ', NULL, NULL, NULL, 'QUEDA NIVEL < 2M ', NULL, NULL, NULL, 20),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AFOGAMENTO', NULL, 'ATROPELAMENTO ', NULL, NULL, NULL, NULL, 'INTOXICAÇÃO ', NULL, NULL, NULL, NULL, NULL, NULL, 21);

-- --------------------------------------------------------

--
-- Estrutura para tabela `problemas`
--

CREATE TABLE `problemas` (
  `Psiquiatrico` varchar(4) NOT NULL,
  `Obstetrico` varchar(20) NOT NULL,
  `Respiratorio` varchar(20) NOT NULL,
  `Transporte` varchar(20) NOT NULL,
  `Diabetes` varchar(20) NOT NULL,
  `Outro` int(130) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `problemas`
--

INSERT INTO `problemas` (`Psiquiatrico`, `Obstetrico`, `Respiratorio`, `Transporte`, `Diabetes`, `Outro`) VALUES
('psiq', 'normal', 'naoobtem', 'hemor.excessiva', 'emergencial', 16),
('psiq', 'normal', 'naoobtem', 'naogravida', 'samu', 17);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais`
--

CREATE TABLE `sinais` (
  `pressao` varchar(20) DEFAULT NULL,
  `pulso` varchar(20) DEFAULT NULL,
  `respiracao` varchar(20) DEFAULT NULL,
  `saturacao` varchar(20) DEFAULT NULL,
  `htg` varchar(20) DEFAULT NULL,
  `temperatura` varchar(20) DEFAULT NULL,
  `anormalnormal` varchar(45) DEFAULT NULL,
  `perfusao` varchar(20) DEFAULT NULL,
  `idPac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sinais`
--

INSERT INTO `sinais` (`pressao`, `pulso`, `respiracao`, `saturacao`, `htg`, `temperatura`, `anormalnormal`, `perfusao`, `idPac`) VALUES
('1', '25', '35', '15', '25', '36', 'on', 'on', 11),
('34', '34', '34', '34', '34', '34', 'normal', 'maior', 1),
('25', '35', '98', '56', '25', '32', 'normal', 'menor', 12),
('4', '44', '4', '44', '4', '4', 'normal', NULL, 13),
('21', '2', '21', '21', '21', '21', 'normal', 'maior', 14),
('2', '8', '2', '2', '2', '2', 'normal', 'maior', 15),
('43', '43', '43', '43', '43', '43', 'anormal', 'menor', 16),
('15h', '95h', '54h', '54h', '54h', '54h', 'anormal', 'menor', 17),
('95', '96', '98', '98', '98', '98', 'normal', 'maior', 18),
('95', '96', '98', '98', '98', '98', 'normal', 'maior', 18),
('54', '54', '54', '54', '54', '54', 'normal', 'menor', 18),
('54', '54', '54', '545', '4', '5', 'normal', NULL, 19),
('2', '23', '23', '23', '23', '23', 'anormal', 'maior', 20),
('12', '12', '12', '12', '12', '39', 'anormal', 'menor', 21);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sintomas`
--

CREATE TABLE `sintomas` (
  `abdomen` varchar(30) DEFAULT NULL,
  `afundamento` varchar(30) DEFAULT NULL,
  `agitacao` varchar(30) DEFAULT NULL,
  `cianose` varchar(30) DEFAULT NULL,
  `edma` varchar(30) DEFAULT NULL,
  `enfisema` varchar(30) DEFAULT NULL,
  `estase` varchar(30) DEFAULT NULL,
  `face` varchar(30) DEFAULT NULL,
  `hemorragia` varchar(30) DEFAULT NULL,
  `hipertencao` varchar(30) DEFAULT NULL,
  `hipotencao` varchar(30) DEFAULT NULL,
  `nauseas` varchar(30) DEFAULT NULL,
  `idPac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `ambulancia`
--
ALTER TABLE `ambulancia`
  ADD KEY `idPac` (`idPac`);

--
-- Índices de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD KEY `idPac` (`idPac`);

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `dados_p`
--
ALTER TABLE `dados_p`
  ADD PRIMARY KEY (`idPac`);

--
-- Índices de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD KEY `idPac` (`idPac`);

--
-- Índices de tabela `sinais`
--
ALTER TABLE `sinais`
  ADD KEY `idPac` (`idPac`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1433;

--
-- AUTO_INCREMENT de tabela `dados_p`
--
ALTER TABLE `dados_p`
  MODIFY `idPac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `ambulancia`
--
ALTER TABLE `ambulancia`
  ADD CONSTRAINT `ambulancia_ibfk_1` FOREIGN KEY (`idPac`) REFERENCES `dados_p` (`idPac`);

--
-- Restrições para tabelas `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`idPac`) REFERENCES `dados_p` (`idPac`);

--
-- Restrições para tabelas `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD CONSTRAINT `ocorrencia_ibfk_1` FOREIGN KEY (`idPac`) REFERENCES `dados_p` (`idPac`);

--
-- Restrições para tabelas `sinais`
--
ALTER TABLE `sinais`
  ADD CONSTRAINT `idPac` FOREIGN KEY (`idPac`) REFERENCES `dados_p` (`idPac`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
