-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.6.5-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para db_base
DROP DATABASE IF EXISTS `db_base`;
CREATE DATABASE IF NOT EXISTS `db_base` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `db_base`;

-- Copiando estrutura para tabela db_base.cidade
DROP TABLE IF EXISTS `cidade`;
CREATE TABLE IF NOT EXISTS `cidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) DEFAULT NULL,
  `uf` int(2) DEFAULT NULL,
  `ibge` int(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COMMENT='Municipios das Unidades Federativas';

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela db_base.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `ID_cliente` int(11) NOT NULL,
  `CNPJCPF` varchar(18) DEFAULT NULL,
  `FISICOJURIDICO` char(1) DEFAULT NULL,
  `RAZAONOME` varchar(100) DEFAULT NULL,
  `ENDERECORUA` varchar(100) DEFAULT NULL,
  `ENDERECONUMERO` int(11) DEFAULT NULL,
  `ENDERECOCEP` varchar(8) DEFAULT NULL,
  `ENDERECOCOMPLEMENTO` varchar(50) DEFAULT NULL,
  `ENDERECOBAIRRO` varchar(50) DEFAULT NULL,
  `ENDERECOCIDADE` varchar(20) DEFAULT NULL,
  `ENDERECOESTADO` varchar(2) DEFAULT NULL,
  `DT_FUNDACAO` date DEFAULT NULL,
  `INSCRICAORG` varchar(11) DEFAULT NULL,
  `EMAIL1` varchar(50) DEFAULT NULL,
  `EMAIL2` varchar(50) DEFAULT NULL,
  `TEL1` varchar(13) DEFAULT NULL,
  `TEL2` varchar(13) DEFAULT NULL,
  `CEL1` varchar(14) DEFAULT NULL,
  `CEL2` varchar(14) DEFAULT NULL,
  `SITE` varchar(50) DEFAULT NULL,
  `DT_INCLUSAO` date DEFAULT NULL,
  `HR_INCLUSAO` time DEFAULT NULL,
  `DT_ALTERACAO` date DEFAULT NULL,
  `HR_ALTERACAO` time DEFAULT NULL,
  `USUARIOINCLUSAO` int(11) DEFAULT NULL,
  `USUARIOALTERACAO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_cliente`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela db_base.estadocivil
DROP TABLE IF EXISTS `estadocivil`;
CREATE TABLE IF NOT EXISTS `estadocivil` (
  `ID_ESTADOCIVIL` int(11) NOT NULL,
  `DESCRICAO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_ESTADOCIVIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela db_base.filial
DROP TABLE IF EXISTS `filial`;
CREATE TABLE IF NOT EXISTS `filial` (
  `ID_FILIAL` int(11) NOT NULL,
  `CNPJCPF` varchar(18) DEFAULT NULL,
  `FISICOJURIDICO` char(1) DEFAULT NULL,
  `RAZAOSOCIAL` varchar(100) DEFAULT NULL,
  `ENDERECORUA` varchar(100) DEFAULT NULL,
  `ENDERECONUMERO` int(11) DEFAULT NULL,
  `ENDERECOCEP` varchar(8) DEFAULT NULL,
  `ENDERECOCOMPLEMENTO` varchar(50) DEFAULT NULL,
  `ENDERECOBAIRRO` varchar(50) DEFAULT NULL,
  `ENDERECOCIDADE` varchar(20) DEFAULT NULL,
  `ENDERECOESTADO` varchar(2) DEFAULT NULL,
  `DT_FUNDACAO` date DEFAULT NULL,
  `INSCRICAOESTADUAL` varchar(11) DEFAULT NULL,
  `EMAIL1` varchar(50) DEFAULT NULL,
  `EMAIL2` varchar(50) DEFAULT NULL,
  `TEL1` varchar(13) DEFAULT NULL,
  `TEL2` varchar(13) DEFAULT NULL,
  `CEL1` varchar(14) DEFAULT NULL,
  `CEL2` varchar(14) DEFAULT NULL,
  `SITE` varchar(50) DEFAULT NULL,
  `DT_INCLUSAO` date DEFAULT NULL,
  `HR_INCLUSAO` time DEFAULT NULL,
  `DT_ALTERACAO` date DEFAULT NULL,
  `HR_ALTERACAO` time DEFAULT NULL,
  `USUARIOINCLUSAO` int(11) DEFAULT NULL,
  `USUARIOALTERACAO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_FILIAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela db_base.nacionalidade
DROP TABLE IF EXISTS `nacionalidade`;
CREATE TABLE IF NOT EXISTS `nacionalidade` (
  `ID_NACIONALIDADE` int(11) NOT NULL,
  `NOMEPAIS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_NACIONALIDADE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela db_base.pessoa
DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE IF NOT EXISTS `pessoa` (
  `ID_PESSOA` int(11) NOT NULL,
  `CPF` varchar(15) DEFAULT NULL,
  `RG` varchar(15) DEFAULT NULL,
  `ENDERECORUA` varchar(50) DEFAULT NULL,
  `ENDERECONUMERO` varchar(5) DEFAULT NULL,
  `ENDERECOCOMPLEMENTO` varchar(30) DEFAULT NULL,
  `ENDERECOCEP` varchar(8) DEFAULT NULL,
  `ENDERECOBAIRRO` varchar(15) DEFAULT NULL,
  `ENDERECOCIDADE` varchar(15) DEFAULT NULL,
  `ENDERECOESTADO` varchar(2) DEFAULT NULL,
  `ID_NACIONALIDADE` int(11) DEFAULT NULL,
  `ID_ESTADO_CIVIL` int(11) DEFAULT NULL,
  `ID_PROFISSAO` int(11) DEFAULT NULL,
  `DT_INCLUSAO` date DEFAULT NULL,
  `HR_INCLUSAO` time DEFAULT NULL,
  `DT_ALTERACAO` date DEFAULT NULL,
  `HR_ALTERACAO` time DEFAULT NULL,
  `USUARIOINCLUSAO` int(11) DEFAULT NULL,
  `USUARIOALTERACAO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PESSOA`),
  KEY `FK_pessoa_nacionalidade` (`ID_NACIONALIDADE`),
  CONSTRAINT `FK_pessoa_nacionalidade` FOREIGN KEY (`ID_NACIONALIDADE`) REFERENCES `nacionalidade` (`ID_NACIONALIDADE`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela db_base.profissao
DROP TABLE IF EXISTS `profissao`;
CREATE TABLE IF NOT EXISTS `profissao` (
  `ID_PROFISSAO` int(11) NOT NULL,
  `DESCRICAO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_PROFISSAO`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela db_base.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `CD_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(100) DEFAULT NULL,
  `SENHA` varchar(30) DEFAULT NULL,
  `CONFIRMASENHA` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CD_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Exportação de dados foi desmarcado.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
