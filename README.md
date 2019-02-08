# README

Estrutura criada para teste com rails no modelo MVC.

inicialmente temos  um data.json  disponivel.

Tente criar uma tabela simples  la no View mesmo mostrando estes dados odenados pela data.


Pra executar é so digitar o comando: rails server


mudei a pora pra escutar 3001. Porem pode mudar se achar necessario( la no puma.rb).

criei uma pagina para testar: http://localhost:3001/inicio




***********criando a capability teste******************

Antes de executar o programa para gerar dados pro interscity é necessario criar os capabilities dele(primeiro comando abaixo) e em seguida criar o recurso antes de enviar os dados. 

curl -H "Content-Type: application/json" -X POST -d '{"name":"teste", "description":"teste float value in celcius", "capability_type":"sensor"}' http://localhost:3000/capabilities | json_pp

criando um recurso com o capability teste
curl -H "Content-Type: application/json" -X POST -d '{"data":{"lat":-23.559616,"lon":-46.731386,"description":"recurso teste com a porta 3002","capabilities":["teste"], "status":"active"}}' http://localhost:3002/components | json_pp

IMPORTANTE: após a execução do comando pra criar o recurso, é necessario atualizar a url dentro do postData.rb.

a URL contem a UUID que o interscity gerou pro seu recurso. Substitua e execute.

uri = URI.parse("http://localhost:8000/adaptor/resources/*29841a03-c714-4a51-a386-546bcd5589ad*/data")


apos subir a plataforma, na pasta "ruby aplication" tem um programa ruby que envia dados pra plataforma (postData.rb).

Para executar é so entrar na pasta com o terminal e digitar "ruby postData.rb"

deve funcionar. Certifique-se de  ter criado o capabity teste e o recurso, alterando o UUID dentro da URL  do programa postdata.rb

