# BMI Calculator

- [Contexto](#contexto)
- [Gems Utilizadas](#gems-utilizadas)
- [Configurando Ambiente](#configurando-ambiente)
- [Testando a API](#testando-a-api)
- [Avisos e informações adicionais](#avisos-e-informações-adicionais)

## [Contexto](#contexto)

Esta Calculadora de IMC foi feita como uma etapa de processo seletivo, onde utilizei o projeto como uma API para ser consumida por alguma Front, **não sendo objetivo desta aplicação**, por meio de requisições.

## [Gems Utilizadas](#gems-utilizadas)

As versões do Ruby e do Rails utilizadas foram:

> Ruby -v 3.0.0 </br>
> Rails -v 7.0.3 </br>

Para criar a API Rails e a requisição para receber o JSON e retornar o JSON e ainda gerar o token de autenticação JWT, **optei por utilizar algumas Gems**, sendo estas apresentadas a seguir:

> Rack Cors -v 0.4.0 </br>
> BCrypt -v 3.1.7 </br>
> JWT -v 1.5.4 </br>

## [Configurando Ambiente](#configurando-ambiente)

É opicional clonar o repositório com as versões do Ruby e do Rails já instaladas ou instalar após o clone do repositório.

Após isso será necessário entrar por meio do seu terminal no caminho/pasta do projeto e executar o comando `bundle install` que as gems presentes no arquivo Gemfile.rb serão executadas.

## [Testando a API](#testando-a-api)

Com o postman aberto e sua API rodando será necessário adicionar a seguinte URL on Postman.

<http://localhost:3000/api/v1/bmis>

Em seguida deverá ser enviado por meio do método POST dentro do Postman.

**PASSO IMPORTANTE: Não será possível fazer a requisição sem este Token de autenticação.**

Depois pegue um Bearer Token, como este abaixo, e insira na aba Authorization > Bearer Token.

```bash
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL2Rldi1pYTBxYnh2eS51cy5hdXRoMC5jb20vIiwic3ViIjoiaWZQS044QUVsUmNVd0pEWnp0YjFqNlo2ZHZiUk1aRnZAY2xpZW50cyIsImF1ZCI6Imh0dHA6Ly9sb2NhbGhvc3Q6MzAwMC9hcGkvdjEvYm1pcyIsImlhdCI6MTY2MjAwOTA5OSwiZXhwIjoxNjYyMDk1NDk5LCJhenAiOiJpZlBLTjhBRWxSY1V3SkRaenRiMWo2WjZkdmJSTVpGdiIsImd0eSI6ImNsaWVudC1jcmVkZW50aWFscyJ9.1qWegJfvq5t2k3aWEGht4fiur7tbNquNCTMEIThv2fA
```

o seguinte JSON deve ser inserido dentro do Body da requisição:

```json
{
  "height": 1.7,
  "weight": 90
}
```

Ao final desses passos deverá ser recebido um result como o JSON abaixo:

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

## [Avisos e informações adicionais](#avisos-e-informações-adicionais)

Algumas validações e verificações dentro da requisição ainda não foram implementadas, porém, pretendo melhorar este teste com o passar do tempo. Desejo estudar JWT de modo com que eu possa implementar funções que geram tokens e validam de forma automática.

Qualquer feedback, positivo ou negativo, é bem vindo e assim que disponível responto.

Redes sociais:

[LinkedIn](https://www.linkedin.com/in/nicholastn/) </br>
[Site](https://nicholastn1.github.io)
