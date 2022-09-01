
# BMI Calculator

Teste para processo seletivo criado utilizando Ruby On Rails e algumas gems.

Durante o teste utilizei apenas o projeto como API testando suas requisicoes pelo Postman e sera explicado como testar.

## Configurando Ambiente

Para testar a aplicacao deve-se primeiro ter as seguintes versoes instaladas em sua maquina, sendo opicional clonar o repositorio antes ou depois.

Ruby 3.0.0 e 
Rails 7.0.3.1

Apos ter essas versoes instaladas em sua maquina e ja com o repositorio clonado, pode executar o comando bundle dentro do diretorio do projeto.

## Testando a API

Com o postman aberto e sua API rodando sera necessario adicionar dentro do Postman a url http://localhost:3000/api/v1/bmis utilizando o metodo Post.

Em Auth devera ser utilizando um Bearer Token como a seguir

#### OBS: Nao sera possivel a requisicao sem este Token de autenticacao.

```bash
  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL2Rldi1pYTBxYnh2eS51cy5hdXRoMC5jb20vIiwic3ViIjoiaWZQS044QUVsUmNVd0pEWnp0YjFqNlo2ZHZiUk1aRnZAY2xpZW50cyIsImF1ZCI6Imh0dHA6Ly9sb2NhbGhvc3Q6MzAwMC9hcGkvdjEvYm1pcyIsImlhdCI6MTY2MjAwOTA5OSwiZXhwIjoxNjYyMDk1NDk5LCJhenAiOiJpZlBLTjhBRWxSY1V3SkRaenRiMWo2WjZkdmJSTVpGdiIsImd0eSI6ImNsaWVudC1jcmVkZW50aWFscyJ9.1qWegJfvq5t2k3aWEGht4fiur7tbNquNCTMEIThv2fA
```

Em seguida o seguinte JSON deve ser inserido dentro do Body da requisicao:

```json
{
    "height": 1.70,
    "weight": 90
}
```

Ao final desses passos devera ser recebido um result como o JSON abaixo:

```json
{
    "id": 40,
    "height": 1.7,
    "weight": 90.0,
    "created_at": "2022-09-01T07:04:45.091Z",
    "updated_at": "2022-09-01T07:04:45.091Z",
    "bmi_value": 31.14186851211073,
    "bmi_category": "Obese",
    "bmi_obeisity": "I"
}
```

### Avisos e informacoes adicionais:

Algumas validacoes nao foram feitas ainda e ainda pretendo fazer alteracoes para gerar e validar do Token

