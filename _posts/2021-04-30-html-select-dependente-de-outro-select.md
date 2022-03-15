---
layout: post
title: Html – Select dependente de outro select
author: "Raimundo Nonato Launé macêdo"
---

Muitas pessoas têm dúvidas de como popular as opções de um select dependendo de uma escolha selecionada em um outro select. Nesta abordagem, vamos combinar dois arquivos: o primeiro, conterá `scripts` `html`, `js` e `aJax`, e o segundo contará com script `php`, `js` e `html`.


Usaremos como exemplo a situação em que desejamos selecionar um Município relativamente a uma Unidade da Federação (UF) previamente escolhida no primeiro select.

O primeiro aquivo, que diremos principal, será nomeado `arq_principal.php` conterá o primeiro select com as opções com quatro unidades da federação:
```html 
<html> 
  <head> 
    <meta charset="UTF-8"/> http://code.jquery.com/jquery-latest.min.js <title>Teste</title> 
  </head> 
  <body> 
    <form> 
      <div> 
        <select id='sel_estado' name='estado'> 
          <option>MA</option> 
          <option>PI</option> 
          <option>CE</option> 
          <option>PE</option> 
          <option>PA</option> 
        </select> 
      </div> 
      <div> 
        <div id='div_municipios'> Aqui ficará o select de municípios do estado selecionado. </div> 
      </div> 
    </form> 
  </body> 
</html>
// 
<script language="JavaScript"> 
$(document).ready(function(){ 
  // Quando o valor do select (id='sel_estado') das uf for alterado 
  // a função filtra_municipios() será chamada... 
  $(document).on("change","#sel_estado",function(){ 
    filtra_municipios(); 
  }); 
});
// 
function filtra_municipios(){ 
  estado = $("#sel_estado").val(); 
  // Obtém o valor selecionado no select 
  // Este script ajax remete ao script php filtro_municipios.php com 
  // passagem de parâmetro uf via POST para tratamento e retorno do 
  // script html com o select montado com os municípios filtrados. 
  // Este select tera saída na <div id='div_municipios'> 
  $.ajax({ url: 'filtro_municipios.php', 
          type: "POST", 
          data: ({ uf: estado }), 
       success: function(data){ 
                      $("#div_municipios").html(data); } 
          }); 
} 
</script>
```
O segundo aquivo, dito secundário, nomearemos de `filtro_municipios.php` e conterá o segundo select com os município em uma `array`.

```php
<? 
  // Obtenção do estado (UF) obtido pela passagem via POST na chamada ajax. $uf = $_POST['uf']; 
  // Como exemplo temos umaa array contendo três municípios para cada 
  // um dos cinco estados do primeiro <select> 
  $municipios = array( ['MA'=>'São Luís', 
                        'PI'=>'Teresina', 
                        'PE'=>'Recife', 
                        'CE'=>'Fortaleza', 
                        'PA'=>'Belém'], 
                        ['MA'=>'Rosário','PI'=>'Barras','PE'=>'Petrolina','CE'=>'Caucaia','PA'=>'Castanhal'],
                        ['MA'=>'Raposa','PI'=>'Oeiras','CE'=>'Juazeiro','PE'=>'Jaboatão','PA'=>'Capanema']); 
?> 
<!-- Montagem do <select> cujos <option> serão os minicípios filtrados pelo conteúdo em $uf. 
     O resultado deste script HTML será devolvido à chamada ajax-->
  <select> 
    <?foreach($municipios as $reg){ ?> <option><?=$reg[$uf]?></option> <? } ?> 
  </select>
```

Pronto. Sugerimos que você primeiro experimente este exemplo para ver como funciona e, a partir do seu entendimento, adeque às suas necessidades!
