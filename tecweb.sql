-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 20-Nov-2017 às 02:14
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tecweb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acao`
--

DROP TABLE IF EXISTS `acao`;
CREATE TABLE IF NOT EXISTS `acao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `acao`
--

INSERT INTO `acao` (`id`, `descr`) VALUES
(1, 'CADASTRAR INFORMAÃ‡Ã•ES DO ALUNO'),
(3, 'VERIFICAR DADOS DO ALUNO'),
(4, 'VERIFICAR CADASTRO PESSOAL'),
(5, 'VERIFICAR NOTAS '),
(6, 'VERIFICAR GRADE HORÃRIA'),
(7, 'VERIFICAR CALENDARIO ACADEMICO'),
(8, 'INSERIR NOTA'),
(9, 'REALIZAR CHAMADA'),
(10, 'ATUALIZAR TELEFONES DE CONTATO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `acaomodulo`
--

DROP TABLE IF EXISTS `acaomodulo`;
CREATE TABLE IF NOT EXISTS `acaomodulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id1` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `acaomodulo`
--

INSERT INTO `acaomodulo` (`id`, `id1`, `id2`) VALUES
(22, 4, 3),
(21, 3, 2),
(20, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modulo`
--

INSERT INTO `modulo` (`id`, `descr`) VALUES
(1, 'MANUTENÃ‡ÃƒO DE ALUNOS'),
(2, 'ACADEMICO'),
(3, 'MANUTENÃ‡ÃƒO DE CADASTRO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `moduloperfil`
--

DROP TABLE IF EXISTS `moduloperfil`;
CREATE TABLE IF NOT EXISTS `moduloperfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id1` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `moduloperfil`
--

INSERT INTO `moduloperfil` (`id`, `id1`, `id2`) VALUES
(11, 3, 1),
(10, 2, 1),
(9, 1, 1),
(5, 2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

DROP TABLE IF EXISTS `perfil`;
CREATE TABLE IF NOT EXISTS `perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`id`, `descr`) VALUES
(1, 'ADMIN'),
(2, 'PROFESSOR'),
(3, 'ALUNO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfilusuario`
--

DROP TABLE IF EXISTS `perfilusuario`;
CREATE TABLE IF NOT EXISTS `perfilusuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id1` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perfilusuario`
--

INSERT INTO `perfilusuario` (`id`, `id1`, `id2`) VALUES
(1, 2, 3),
(4, 3, 2),
(5, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `descr`, `senha`) VALUES
(1, 'ADMIN', '123'),
(2, 'DILMA', '123'),
(3, 'TRUMP', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
