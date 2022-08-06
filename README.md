# Flutter Event Bus + Design Patterns

O projeto foi criado para aplicar uma POC de baixo acoplamento junto com os conceitos de padrões de projetos.

## Sobre o projeto
Buscando soluções para baixo acoplamento e também simplificação de código encontrei o pacote [event_bus](https://pub.dev/packages/event_bus) muito usado para baixo acoplamento em arquitetura MVC.

Sendo assim, montei uma arquitetura MVC para poder fazer o teste desse carinha junto com outras implementações que já venho trabalhando:
- GetIt para orquestramento de dependências
- Strategy Pattern para flexibilidade de implementação, nesse caso usei no `AnalyticsProvider`