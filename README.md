
# Projeto de automação do Sistema SmartBit

Código fonte do projeto criado durante os estudos do bootcamp de Robot Framework ministrado pela QAcademy, com foco em automação web, api e mobile, onde automatizamos os serviços do sistema da Smartbit, um gerenciador de academia onde temos o sistema web destinado aos funcionários e o sistema mobile para os alunos.

# Conhecendo o Sistema, Infraestrutura e Arquitetura do Projeto

O ecosistema da Smartbit é composto por:

- Admin web para gestão dos alunos, planos, matrículas e suporte aos alunos;

- App mobile em android para os alunos acompanharem seu progresso e tirarem suas dúvidas;
- Banco de dados PostgreSQL;
- Redis para gerenciar os envios de e-mails para os alunos.

# Sobre a ferramenta de automação Robot Framework

Todo o projeto foi automatizado em Robot Framework, uma ferramenta que foi feita por QAs para QAs, capaz de automatizar testes funcionais, seu conceiro de automação é simples pois não usa a programação convencional, mas um padrão de palavras-chave, que nada mais são do que funçoes em python encapsuladas em keywords.


# O que aprendemos no projeto

- Construir uma arquitetura de testes completa e do ZERO integrando o Playwright ao Robot Framework
- Utilização dos melhores recursos do Robot como: Hooks (after,before), resource files, reports ricos, screenshots, super variáveis, conversão de tipo de dados entre outros
- Definição de navegador padrão e implementação de testes de interface do usuário para web
- Usamos o padrão Page Object,organizando nossos testes em Robot em arquivos de resources encapsulando acções em novas palavras-chave.
- Consumir APIs REST em Robot, automatizando testes integrados com melhor qualidade e confiança,escavabilidade e velocidade na execução. Ou seja, vamos além de testes GET, POST, PUT e DELETE e validar status code.
- Preparar o ambiente com Android e Appium
- Testes de ponta a ponta para Android App, onde construimos uma arquitetura de testespara Mobile do Zero, integrando o Appium ao Robot com:Tecnicas de inspeção de elementos, manipulação de elementos, testes de integração com a API, screen object como padrão de projeto, execução de testes em devices físicos ou virtuais, reports com screenshots.
