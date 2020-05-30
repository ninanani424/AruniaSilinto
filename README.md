# AruniaSilinto
Software CRUD Web Apptication Java, Gestão de Pessoas
### Os códigos para a criação da base de dados estão no aruniaSilintoDB.txt

#### Alterar o password da base de dados mysql conforme o password da sua base de dados. Os dados se encontram no pacote conexao e classe Conexao. 

#### Depois de ter criado a base de dados, fazer conexão com a DataSource para a integração da base de dados e a aplicação

CREATE DATABASE aruniaSilinto;

USE aruniaSilinto;

CREATE TABLE `Pessoa` (
  `idPessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `apelido` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `dataNascimento` varchar(45) DEFAULT NULL,
  `provinciaNascimento` varchar(45) DEFAULT NULL,
  `cidadeNascimento` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SELECT * FROM aruniaSilinto.Pessoa;


