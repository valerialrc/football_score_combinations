# Football Score Combinations

## Descrição
API para calcular o número de combinações possíveis de pontuações em um jogo de futebol americano.

## Tecnologias Utilizadas
- Ruby on Rails
- GraphQL
- Docker

## Como Executar

1. Clone o repositório
2. Navegue até o diretório do projeto:

    ```bash
    cd football_score_combinations
    ```
3. Execute o comando para construir e iniciar os contêineres:

    ```bash
    docker-compose up --build -d
    ```

4. Acesse a aplicação em `localhost:3000/graphiql`

### Sem Docker

1. Clone o repositório
2. Navegue até o diretório do projeto:

    ```bash
    cd football_score_combinations
    ```
3. Execute o script de setup:

    ```bash
    bin/setup
    ```
4. Execute o server
    ```bash
    rails server
    ```
5. Acesse a aplicação em `localhost:3000/graphiql`


## Endpoints

### API REST
#### Rota POST

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
#### Rota GET (apenas para testes)

- **URL:** `/verify`
- **Método:** `GET`
- **Parâmetros da Query:**
  - `score`: Uma string que representa o placar da partida no formato `NxM`.
    - Tipo: String
    - Exemplo: `3x15`
  
- **Exemplo de Requisição:**
    ```
    GET /verify?score=3x15
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
      verify(score: "3x15") {
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
docker-compose exec -e RAILS_ENV=test app bundle exec rspec
```

### Sem Docker
```bash
rspec
