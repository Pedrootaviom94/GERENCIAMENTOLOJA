-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Maio-2022 às 01:34
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentatio`
--

CREATE TABLE `comentario` (
  `IdComentario` int(11) NOT NULL,
  `IdProduto` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `TextoComentario` varchar(1024) NOT NULL,
  `DataCriacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lj`
--

CREATE TABLE `loja` (
  `IdLoja` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `Nome` varchar(250) NOT NULL,
  `Descricao` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagem`
--

CREATE TABLE `mensagem` (
  `IdMensagem` int(11) NOT NULL,
  `IdPedido` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `Conteudo` varchar(250) NOT NULL,
  `DataEnvio` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `IdPedido` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `DataPedido` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidoproduto`
--

CREATE TABLE `pedidoproduto` (
  `IdPedidoProduto` int(11) NOT NULL,
  `IdPedido` int(11) NOT NULL,
  `IdProduto` int(11) NOT NULL,
  `Quantidade` INT (11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `IdProduto` int(11) NOT NULL ,
  `IdLoja` int(11) NOT NULL ,
  `Nome` varchar(250) NOT NULL ,
  `Descricao` varchar(1024) NOT NULL ,
  `UrlImagem` varchar(1024) NOT NULL ,
  `QuantidadeDisponivel` INT (11) NOT NULL ,
  `Valor` DOUBLE (9,2) NOT NULL ,
  `DisponivelVenda` BIT(1) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL,
  `Nome` varchar(200),
  `Email` varchar(250) ,
  `Senha` varchar(250) ,
  `Contato` varchar(250) ,
  `TipoUsuario` varchar(250) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentatio`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`IdComentario`),
  ADD KEY `IdProduto` (`IdProduto`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Índices para tabela `lj`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`IdLoja`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Índices para tabela `mensagem`
--
ALTER TABLE `mensagem`
  ADD PRIMARY KEY (`IdMensagem`),
  ADD KEY `IdPedido` (`IdPedido`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`IdPedido`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Índices para tabela `pedidoproduto`
--
ALTER TABLE `pedidoproduto`
  ADD PRIMARY KEY (`IdPedidoProduto`),
  ADD KEY `IdPedido` (`IdPedido`),
  ADD KEY `IdProduto` (`IdProduto`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`IdProduto`),
  ADD KEY `Idloja` (`Idloja`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentatio`
--
ALTER TABLE `comentatio`
  MODIFY `IdComentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lj`
--
ALTER TABLE `loja`
  MODIFY `IdLoJa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mensagem`
--
ALTER TABLE `mensagem`
  MODIFY `IdMensagem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `IdPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedidoproduto`
--
ALTER TABLE `pedidoproduto`
  MODIFY `IdPedidoProduto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `IdProduto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `comentatio`
--
ALTER TABLE `comentatio`
  ADD CONSTRAINT `comentatio_ibfk_1` FOREIGN KEY (`IdProduto`) REFERENCES `produto` (`IdProduto`),
  ADD CONSTRAINT `comentatio_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`);

--
-- Limitadores para a tabela `loja`
--
ALTER TABLE `loja`
  ADD CONSTRAINT `loja_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`);

--
-- Limitadores para a tabela `mensagem`
--
ALTER TABLE `mensagem`
  ADD CONSTRAINT `mensagem_ibfk_1` FOREIGN KEY (`IdPedido`) REFERENCES `pedido` (`IdPedido`),
  ADD CONSTRAINT `mensagem_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuario` (`IdUsuario`);

--
-- Limitadores para a tabela `pedidoproduto`
--
ALTER TABLE `pedidoproduto`
  ADD CONSTRAINT `pedidoproduto_ibfk_1` FOREIGN KEY (`IdPedido`) REFERENCES `pedido` (`IdPedido`),
  ADD CONSTRAINT `pedidoproduto_ibfk_2` FOREIGN KEY (`IdProduto`) REFERENCES `produto` (`IdProduto`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`IdLoja`) REFERENCES `loja` (`IdLoja`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
