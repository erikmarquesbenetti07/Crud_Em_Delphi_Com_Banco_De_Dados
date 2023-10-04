# Crud_Em_Delphi_Com_Banco_De_Dados
Projeto Delphi com DataModule e Operações CRUD para a Tabela Conta (Firebird + dbExpress)

## Descrição
Este é um projeto Delphi que demonstra como criar um DataModule e implementar operações CRUD (Create, Read, Update, Delete) para a tabela "Conta" em um banco de dados Firebird usando o framework dbExpress.

## Pré-requisitos
- Embarcadero Delphi (ou RAD Studio) instalado.
- Conexão Firebird configurada usando o componente TSQLConnection.
- Banco de dados Firebird com a tabela "Conta" criada.

## Configuração
1. Abra o projeto no Delphi.
2. Certifique-se de ter configurado corretamente a conexão com o banco de dados Firebird no componente TSQLConnection do DataModule.
3. Compile e execute o projeto.

## Uso
O projeto inclui um DataModule com as seguintes operações CRUD para a tabela "Conta":
- CreateConta: Cria uma nova conta.
- ReadConta: Lê informações de uma conta existente.
- UpdateConta: Atualiza informações de uma conta existente.
- DeleteConta: Exclui uma conta existente.

Você pode usar essas funções como base para interagir com o banco de dados Firebird em sua aplicação Delphi.

```delphi
// Exemplo de uso:
if CreateConta('123456', 'João Silva', 1000.0, 5000.0) then
  ShowMessage('Conta criada com sucesso.')
else
  ShowMessage('Erro ao criar a conta.');

if ReadConta('123456') then
  ShowMessage('Informações da conta lidas com sucesso.')
else
  ShowMessage('Conta não encontrada.');

if UpdateConta('123456', 'João Silva', 1500.0, 6000.0) then
  ShowMessage('Conta atualizada com sucesso.')
else
  ShowMessage('Erro ao atualizar a conta.');

if DeleteConta('123456') then
  ShowMessage('Conta excluída com sucesso.')
else
  ShowMessage('Erro ao excluir a conta.');
```

## Contribuição
Contribuições são bem-vindas. Se você deseja melhorar ou expandir este projeto, sinta-se à vontade para fazer um fork, implementar as melhorias e enviar um pull request.

## Licença
Este projeto está licenciado sob a [Licença MIT](LICENSE).
