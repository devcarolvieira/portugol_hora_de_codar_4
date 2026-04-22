# 🏦 Simulador de Caixa Eletrônico (ATM)

Este projeto simula as operações essenciais de um sistema bancário, focando em segurança, validações de saldo e integridade de transações.

## 📋 Melhorias e Funcionalidades
* **Autenticação de Segurança:** Acesso protegido por senha (`3589`) para todas as operações críticas (saldo, saque, extrato e transferência).
* **Gestão de Saldo:** * Bloqueio de saques e transferências superiores ao saldo disponível.
    * Impedimento de transações com valores nulos ou negativos.
* **Extrato Bancário:** Visualização de histórico fictício de movimentações.
* **Transferências:** Validação de número de conta (apenas caracteres numéricos) e controle de fluxo financeiro.
* **Interface Interativa:** * Saudação personalizada com o nome do utilizador.
    * Menu principal estruturado com `when` (switch/case) para melhor organização.
    * Sistema de erro atualizado para guiar o utilizador.

## 🛠️ Conceitos Técnicos
* **Segurança Lógica:** Validação condicional de credenciais antes da execução de métodos.
* **Regras de Negócio:** Implementação de travas de segurança para evitar saldos negativos.
* **Recursividade:** Chamada de funções de validação em caso de senha incorreta para manter o fluxo do sistema.
* **Tratamento de Dados:** Filtros para garantir que depósitos e transferências sejam valores positivos.

## 🚀 Tecnologias
* **Linguagem:** Kotlin
* **Paradigma:** Imperativo / Estruturado
