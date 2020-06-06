# AruniaSilinto
Software CRUD Web Apptication Java, Gestão de Pessoas

# Produção

- [X] Sistema Operativo: Recomendavel Windows 10 Pro X64
- [X] IDE: Netbeans 8.2
- [X] Servidor Web: Glassfish 4.1.1
- [X] Web Browser: Recomendavel Google Chrome 83.0.4103.61
- [X] Database: MySQL Server 5.1.31

Os códigos para a criação da base de dados estão no  *aruniaSilintoDB.pdf*

Alterar o password da base de dados mysql conforme o password da sua base de dados. Os dados se encontram no pacote conexao e classe Conexao. 

Depois de ter criado a base de dados, fazer conexão com a DataSource para a integração da base de dados e a aplicação


# Arquitectura de Deployment

### Arquitetura Utilizada: Client-Server (Página única orientada para os serviços de aplicações Web (Web 2.0 e aplicações HTML5)
- [X] Base de código: Ccontrole de versão integrada no repositório(Release Version baseado no 0.0.0) Github. Foi usado o modelo MVC(Model View & Controller).
- [X] Dependências: Library (MYSQL JDBC Driver).
- [X] Configuração: Uso de DataSource (DSAruniaSilinnto).
- [X] Construa, libere, execute: Não esqueça fazer Clean & Built.
- [X] Ligações à portas: localhost:8080.

### Diagrama de Caso de Uso
![Caso de Uso](https://github.com/ninanani424/AruniaSilinto/blob/master/web/diagrams/UseCaseDiagram.jpg)

### Diagrama de Colaboração
![Colaroração](https://github.com/ninanani424/AruniaSilinto/blob/master/web/diagrams/CollaborationDiagram.jpg)
