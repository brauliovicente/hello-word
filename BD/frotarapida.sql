-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Maio-2021 às 23:09
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `frotarapida`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `automovel`
--

CREATE TABLE IF NOT EXISTS `automovel` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `estado` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `qtdPassageiro` int(4) DEFAULT NULL,
  `modelo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `motorista` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `dataCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dataEdicao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `automovel`
--

INSERT INTO `automovel` (`codigo`, `matricula`, `estado`, `qtdPassageiro`, `modelo`, `motorista`, `dataCriacao`, `dataEdicao`) VALUES
(3, 'BO98654', 'Funcionando', 3, 'Onibus - exclusivo', 'Manuel André', '2021-05-05 23:57:12', '2021-05-02 15:32:32'),
(2, 'LDA00879', 'Funcionando', 12, 'Rav-4', 'Luís Hélder', '2021-05-05 22:31:22', '2021-05-05 23:56:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bilhete_viagem`
--

CREATE TABLE IF NOT EXISTS `bilhete_viagem` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoViajem` int(11) NOT NULL,
  `nomeCliente` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `telefoneCliente` varchar(15) NOT NULL,
  `valorPago` int(11) NOT NULL,
  `dataActual` date NOT NULL,
  `codigoReferencia` varchar(200) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `bilhete_viagem`
--

INSERT INTO `bilhete_viagem` (`codigo`, `codigoViajem`, `nomeCliente`, `telefoneCliente`, `valorPago`, `dataActual`, `codigoReferencia`) VALUES
(1, 2, 'Teste', '1234', 45000, '2021-05-10', ''),
(2, 2, 'Teste', '1234', 45000, '2021-05-10', ''),
(3, 2, 'Teste dois', '1234', 45000, '2021-05-05', ''),
(4, 3, 'Raymundo António', '1234', 45000, '2021-05-05', ''),
(5, 3, 'ITEL', '24498761667', 45000, '2021-05-05', ''),
(6, 3, 'ITEL', '24498991', 120000, '2021-05-05', ''),
(7, 2, 'Teste', '12', 45000, '2021-05-02', ''),
(8, 4, 'Dom Saramago', '923455889', 12000, '2021-05-03', ''),
(9, 5, 'Souza Manuel', '92968828282', 25000, '2021-05-11', '1'),
(10, 5, 'Teste', '92968828282', 25000, '2021-05-11', '1233344454'),
(11, 5, 'Souza Manuel Teste', '122334444', 25000, '2021-05-11', '1233344454'),
(12, 5, 'Good times', '9818191', 25000, '2021-05-11', '14555555'),
(13, 5, 'Finalmente', '9818191', 25000, '2021-05-11', '3445567899'),
(14, 7, '1', '', 9000, '2021-05-21', '1234567890'),
(15, 7, '2', '', 9000, '2021-05-21', '2222');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(55) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `usuario` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `senha` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `endereco` varchar(55) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `dataCriacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codigo`, `nome`, `usuario`, `senha`, `endereco`, `email`, `telefone`, `dataCriacao`) VALUES
(1, 'Teste Da Primeira Vez', 'teste01', '12345', 'Luanda', 'teste01@gmail.com', '123456789', '2021-05-21 19:37:55'),
(2, 'ITEL', 'ITEL', '2021', 'Luanda', 'itel@gmail.com', '9108978919', '2021-05-21 20:14:34'),
(3, 'Sérgio Figura', 'ariclesergio', 'chill', 'Luanda', 'sergio@gmail.com', '1234567890', '2021-05-21 20:55:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fluxo_caixa`
--

CREATE TABLE IF NOT EXISTS `fluxo_caixa` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `valor` int(11) DEFAULT NULL,
  `observacao` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `tipo` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `data` varchar(20) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Extraindo dados da tabela `fluxo_caixa`
--

INSERT INTO `fluxo_caixa` (`codigo`, `valor`, `observacao`, `tipo`, `data`) VALUES
(1, 22100, 'Compra do Bilhete de passagem da Rota X pelo Cliente y', '+', '2020-08-11'),
(2, 12000, 'Compra do Bilhete de passagem da Rota Caxito-Catete pelo Cliente Dom Saramago', '+', '2021-05-03'),
(3, 10000, 'Venda do pneu de um autómovel', '+', '2021-05-02'),
(12, 10000, 'Teste', '+', '2021-05-02'),
(6, 1000, 'Adquiriu-se dois bardes de água', '+', '2021-05-02'),
(13, 125000, 'teste', '+', '2021-05-02'),
(11, 150000, 'kakaka', '-', '2021-05-02'),
(14, 10000, 'Pagamento do mecânico', '-', '2021-05-02'),
(15, 20000, 'Venda de bilhetes', '+', '2021-05-02'),
(16, 25000, 'Compra do Bilhete de passagem da Rota Luanda-Ndalatando pelo Cliente Souza Manuel', '+', '2021-05-11'),
(17, 25000, 'Compra do Bilhete de passagem da Rota Luanda-Ndalatando pelo Cliente Teste', '+', '2021-05-11'),
(18, 25000, 'Compra do Bilhete de passagem da Rota Luanda-Ndalatando pelo Cliente Souza Manuel Teste', '+', '2021-05-11'),
(19, 25000, 'Compra do Bilhete de passagem da Rota Luanda-Ndalatando pelo Cliente Good times', '+', '2021-05-11'),
(20, 25000, 'Compra do Bilhete de passagem da Rota Luanda-Ndalatando pelo Cliente Finalmente', '+', '2021-05-11'),
(21, 9000, 'Compra do Bilhete de passagem da Rota Luanda-Gabela pelo Cliente Teste Da Primeira Vez', '+', '2021-05-21'),
(22, 9000, 'Compra do Bilhete de passagem da Rota Luanda-Gabela pelo Cliente ITEL', '+', '2021-05-21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `senha` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dataCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dataEdicao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codigo`, `usuario`, `senha`, `dataCriacao`, `dataEdicao`) VALUES
(1, 'Teste', '123456', '2021-05-03 01:44:19', '2021-05-21 19:33:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `info_frotarapida`
--

CREATE TABLE IF NOT EXISTS `info_frotarapida` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `objectivo` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `slogan` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `dataFundacao` varchar(12) DEFAULT NULL,
  `nif` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `endereco` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linhaAtendimento1` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `linhaAtendimento2` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `logotipo` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `banco1` varchar(100) NOT NULL,
  `iban1` varchar(100) DEFAULT NULL,
  `banco2` varchar(100) DEFAULT NULL,
  `iban2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `info_frotarapida`
--

INSERT INTO `info_frotarapida` (`codigo`, `titulo`, `objectivo`, `slogan`, `dataFundacao`, `nif`, `endereco`, `linhaAtendimento1`, `linhaAtendimento2`, `email`, `logotipo`, `banco1`, `iban1`, `banco2`, `iban2`) VALUES
(1, 'FrotaRápida', 'hahah', 'hhhh', '2021-05-18', '123456', 'Cazenga, Zona 18, 92', '+244 111 1111 333', '9344 6611', 'estilo@gmail.com', '', 'BIC', '123456', 'BFA', '12345');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rota`
--

CREATE TABLE IF NOT EXISTS `rota` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `origem` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `destino` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `dataCriacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dataEdicao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `rota`
--

INSERT INTO `rota` (`codigo`, `origem`, `destino`, `dataCriacao`, `dataEdicao`) VALUES
(1, 'Luanda', 'Negage', '2021-05-05 20:37:57', '2021-05-05 21:46:49'),
(4, 'Caxito', 'Catete', '2021-05-05 21:53:08', '0000-00-00 00:00:00'),
(5, 'Luanda', 'Gabela', '2021-05-06 01:52:48', '0000-00-00 00:00:00'),
(6, 'Gabela', 'Lubango', '2021-05-11 22:33:33', '0000-00-00 00:00:00'),
(7, 'Calulu', 'Luena', '2021-05-11 22:33:42', '0000-00-00 00:00:00'),
(8, 'Luanda', 'Ndalatando', '2021-05-11 22:34:09', '0000-00-00 00:00:00'),
(9, 'Calulu', 'Ndalatando', '2021-05-21 21:04:18', '0000-00-00 00:00:00'),
(10, 'Lubango', 'Praía Morena', '2021-05-21 21:04:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` text,
  `Bairro` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `status` enum('Funcional','Parado','','') DEFAULT NULL,
  `maxAtendimento` int(11) DEFAULT NULL,
  `dataRegisto` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `foto`, `Bairro`, `email`, `password`, `telefone`, `fax`, `status`, `maxAtendimento`, `dataRegisto`, `usuario`) VALUES
(11, 'arquivos/6050bfe818c7b.png', '1', 'teste@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', ' 923565923', '45', 'Funcional', 49, '2021-03-16 14:45:29', 'Bengo-Ambriz'),
(12, 'arquivos/6050c5885d3eb.png', '11', 'bengo@hotmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '901010', '123', 'Funcional', 100, '2021-03-16 14:49:57', 'Bengo Ctt'),
(13, 'arquivos/605619782c105.jpg', '62', 'andulo@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '1111111', '661617181', 'Funcional', 40, '2021-03-20 15:51:32', 'BiÃ©-Andulo'),
(14, 'arquivos/6061eacf900cc.jpg', '313', 'kimakieza@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '900000111', '415161', 'Funcional', 60, '2021-03-29 14:58:13', 'Kima-Kieza');

-- --------------------------------------------------------

--
-- Estrutura da tabela `viajem`
--

CREATE TABLE IF NOT EXISTS `viajem` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `codigoRota` int(11) NOT NULL,
  `codigoAutomovel` int(11) NOT NULL,
  `preco` int(11) NOT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `horapartida` varchar(6) DEFAULT NULL,
  `horachegada` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `viajem`
--

INSERT INTO `viajem` (`codigo`, `codigoRota`, `codigoAutomovel`, `preco`, `estado`, `data`, `horapartida`, `horachegada`) VALUES
(1, 1, 2, 12000, 'Disponivel', '2021-04-12', '00:00', '05:00'),
(2, 1, 2, 45000, 'Disponivel', '2021-04-12', '10:40', '16:20'),
(3, 5, 3, 120000, 'Disponivel', '2021-04-21', '10:00', '18:30'),
(4, 4, 3, 12000, 'Disponivel', '2021-05-10', '06:00', '09:00'),
(5, 8, 2, 25000, 'Disponivel', '2021-05-20', '07:12', '17:45'),
(6, 7, 3, 14000, 'Disponivel', '2021-07-20', '07:00', '14:00'),
(7, 5, 2, 9000, 'Disponivel', '2021-05-23', '07:00', '13:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
