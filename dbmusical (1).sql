-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 30-Out-2022 às 22:10
-- Versão do servidor: 5.5.28-log
-- versão do PHP: 5.4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `dbmusical`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `gerencial`
--

CREATE TABLE IF NOT EXISTS `gerencial` (
  `RGM` int(11) NOT NULL,
  `nomeAluno` varchar(100) DEFAULT NULL,
  `nascAluno` date DEFAULT '1200-01-01',
  `CPF` int(11) DEFAULT NULL,
  `emailAluno` varchar(100) DEFAULT NULL,
  `endAluno` varchar(100) DEFAULT NULL,
  `munAluno` varchar(100) DEFAULT NULL,
  `ufAluno` char(2) DEFAULT NULL,
  `celAluno` int(11) DEFAULT NULL,
  `instrumento` varchar(100) DEFAULT NULL,
  `professor` varchar(100) DEFAULT NULL,
  `perAluno` varchar(100) DEFAULT NULL,
  `discAluno` varchar(100) DEFAULT NULL,
  `semAluno` varchar(100) DEFAULT NULL,
  `notaAluno` varchar(2) DEFAULT NULL,
  `falAluno` int(11) DEFAULT NULL,
  PRIMARY KEY (`RGM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gerencial`
--

INSERT INTO `gerencial` (`RGM`, `nomeAluno`, `nascAluno`, `CPF`, `emailAluno`, `endAluno`, `munAluno`, `ufAluno`, `celAluno`, `instrumento`, `professor`, `perAluno`, `discAluno`, `semAluno`, `notaAluno`, `falAluno`) VALUES
(14, 'fefe', '2001-10-12', 444444, 'fffffff', 'fffff', 'fffff', 'SP', 111111, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'nana', '2000-10-05', 25, 'egfwefwefgwe', 'egwergwegw', 'gwegwegwe', 'SP', 255555, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbaluno`
--

CREATE TABLE IF NOT EXISTS `tbaluno` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfinanceiro`
--

CREATE TABLE IF NOT EXISTS `tbfinanceiro` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbfinanceiro`
--

INSERT INTO `tbfinanceiro` (`id`, `login`, `senha`) VALUES
(9, 'financeiro', '777');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbprof`
--

CREATE TABLE IF NOT EXISTS `tbprof` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbprof`
--

INSERT INTO `tbprof` (`id`, `login`, `senha`) VALUES
(7, 'prof', '4567');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuario`
--

CREATE TABLE IF NOT EXISTS `tbusuario` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
