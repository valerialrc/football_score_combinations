# Football Score Combinations

## Descrição
API para calcular o número de combinações possíveis de pontuações em um jogo de futebol americano.

## Tecnologias Utilizadas
- Ruby on Rails
- GraphQL

## Como Executar

1. Clone o repositório
2. Execute o script de setup:
    ```bash
    bin/setup
    ```
3. Acesse a aplicação em `http://localhost:3000`

## Endpoints

### API REST
- **URL:** `/verify`
- **Método:** `POST`
- **Corpo da Requisição:**
    ```json
    {
      "score": "3x15"
    }
    ```
- **Resposta:**
    ```json
    {
      "combinations": 4
    }
    ```

### API GraphQL
- **URL:** `/graphql`
- **Método:** `POST`
- **Mutation:**
    ```graphql
    mutation {
      verify(input: {score: "3x15"}) {
        combinations
      }
    }
    ```

- **Resposta:**
    ```json
    {
      "data": {
        "verify": {
          "combinations": 4
        }
      }
    }
    ```

## Testes

Para rodar os testes:
```bash
rspec
