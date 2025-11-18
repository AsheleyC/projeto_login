-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para gourmetify
DROP DATABASE IF EXISTS `gourmetify`;
CREATE DATABASE IF NOT EXISTS `gourmetify` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `gourmetify`;

-- Copiando estrutura para tabela gourmetify.contatos
DROP TABLE IF EXISTS `contatos`;
CREATE TABLE IF NOT EXISTS `contatos` (
  `id_contatos` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `telefone` varchar(50) NOT NULL,
  `assunto` varchar(100) NOT NULL DEFAULT '',
  `mensagem` longtext NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'Aguardando Leitura',
  PRIMARY KEY (`id_contatos`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Copiando dados para a tabela gourmetify.contatos: ~11 rows (aproximadamente)
DELETE FROM `contatos`;
INSERT INTO `contatos` (`id_contatos`, `nome`, `email`, `telefone`, `assunto`, `mensagem`, `data`, `status`) VALUES
	(1, 'Asheley Tombolo', 'asheley@gmail.com', '', 'dados', 'cadastrando dados', '2025-11-18 11:45:36', 'Aguardando Leitura'),
	(2, 'Natália Calixto', 'natalia@gmail.com', '1899123456789', 'Professores', 'Nossos professores são muito legais', '2025-11-18 11:47:46', 'Aguardando Leitura'),
	(3, 'Asheley Tombolo', 'asheley@gmail.com', '', 'Professores', 'Nossos professores são muito legais', '2025-11-18 13:08:51', 'Aguardando Leitura'),
	(4, 'Matheus Oliveira', 'matheus@gmail.com', '', 'Não aguento mais ', 'Não aguento mais essas pessoas que só sabem reclamar ', '2025-11-18 13:43:01', 'Aguardando Leitura'),
	(5, 'Matheus Oliveira', 'matheus@gmail.com', '18999999999', 'Não aguento mais ', 'Não aguento mais essas pessoas que só sabem reclamar ', '2025-11-18 13:43:44', 'Aguardando Leitura'),
	(6, 'Bruno Ferreira', 'bruno@gmail.com', '', 'Professores', 'Nossos professores são muito legais', '2025-11-18 14:12:01', 'Aguardando Leitura'),
	(7, 'Bruno Ferreira', 'bruno@gmail.com', '', 'Professores', 'Nossos professores são muito legais', '2025-11-18 14:16:37', 'Aguardando Leitura'),
	(8, 'Bruno Ferreira', 'bruno@gmail.com', '24', 'Professores', 'Nossos professores são muito legais', '2025-11-18 14:16:41', 'Aguardando Leitura'),
	(9, 'Bruno Ferreira', 'bruno@gmail.com', '24', 'Professores', 'Nossos professores são muito legais', '2025-11-18 14:16:42', 'Aguardando Leitura'),
	(10, 'Bruno Ferreira', 'bruno@gmail.com', '24', 'Professores', 'Nossos professores são muito legais', '2025-11-18 14:16:43', 'Aguardando Leitura'),
	(11, 'Asheley', 'asheley@gmail.com', '189', 'Professores', 'Nossos professores são muito legais', '2025-11-18 15:44:20', 'Aguardando Leitura');

-- Copiando estrutura para tabela gourmetify.usuarios
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_user` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(256) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Copiando dados para a tabela gourmetify.usuarios: ~0 rows (aproximadamente)
DELETE FROM `usuarios`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
