---
layout: post
title: 'Montagem de partições internas no ChromeOS/Brunch II'
author: 'Raimundo Nonato Launé macêdo'
tags:
  - brunch
  - ChromeOS
  - montagem
  - mount
  - partições
---

Como você já deve ter notado, as `partições internas` do seu HD/SDD não são montadas por padrão (já que o Chrome OS nunca deve ser usado dessa forma). Portanto, para montar as partições internas, você precisará editar `/etc/fstab` depois de criar uma conta de usuário no Chrome OS. A ideia é montá-los dentro da pasta `~/Downloads` para que você possa acessar essas partições de lá.

A sugestão é, em vez de editar `/etc/fstab`, você criar um novo em local diferente `/usr/local/fstab` que poderá ser editado no Chrome OS mais tarde.


Para quem como eu não esteja conseguindo executar o Terminal Crosh, vamos resolver de outra forma. Iremos precisar instalar um Editor de Textos no ChromeOS, use o Play Store e esolha o mais simples.

Em vez do Crosh, vamos utilizar um terminal do sistema pressionando Ctrl + Alt + F2. Na primeira vez você deverá logar como root e, se pedir senha,
responda com enter. Agora você deverá definir uma senha para o usuário chronos da segunte forma:

```shell
chromeos-setdevpasswd
```

digite e confirme uma senha para chronos. Pronto, da próxima vez em login: responda chronos e digite a senha deste usuário.


**Partições internas montáveis no disco**

Para saber as partições que você quer montar automaticamente quando logar no ChromeOS, vamos listar as partições montáveis.
No terminal digite:

```shell
sudo /sbin/blkid -o full | grep -E "^/dev/sd.*TYPE" | grep -vE "EFI|STATE|ROOT-A"
```

Você obterá como resposta uma lista das partições montáveis parecida com esta:

```shell
/dev/sda1: UUID="72FB-DEFB" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="0538aab4-ffd6-49cd-a555-3f08ef2124ec"
/dev/sda2: LABEL="Mint19.3" UUID="833aae96-3d32-41ee-b5ea-99a959506114" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="Mint19.3" PARTUUID="454a609f-6711-481f-ad00-c7328cf99ae7"
/dev/sda3: LABEL="ChromeOS" BLOCK_SIZE="512" UUID="284A910B20CA3FF7" TYPE="ntfs" PARTLABEL="ChromeOS" PARTUUID="c36e518b-455c-4d52-859c-9c0cd9328649"
/dev/sda4: LABEL="rootMX19" UUID="3d274ab4-da97-4d66-a447-6ab1d337beef" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="MX19" PARTUUID="82b570a9-76c0-4b71-b093-b2baeaa0e75c"
/dev/sda5: LABEL="DadosSSD" UUID="2bf709a6-dccd-4da9-932f-7fe67bed0fd2" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="DadosSSD" PARTUUID="21bc6803-de42-454b-a9c6-4e6045427108"
```

Tome nota das partições que você quer montar automaticamente (por exemplo, vamos montar `/dev/sda4` e `/dev/sda5`).

**Ponto de montagem da partição**

Importante observar que a pasta ~/Dowloads é montada em local específico para cada usuário e depende da versão do Chrome OS. 
Para descobrir o seu local em particular, vamos digitar:
 
```shell
ls /home/chronos | grep u-
```

Este comando deverá ter como resultado a saída parecida com esta: 

```shell
u-9083272a606f9db71de7b7012b129c92046effc5
```


Para não ser preciso digitar esse código (e errar!), vamos mandar este resultado para um arquivo em local acessivo - sua pasta Downloads. Digite:

```shell
ls /home/chronos | grep u- > Downloads/ID.txt
```

Vamos voltar para o ambiente gráfico. Pressione Ctrl + Alt + F1

**Estrutura do arquivo fstab**

Com o aplicativo Arquivos, navegue até a pasta Downloads para abrir o arquivo ID.txt que nos criamos como saída do comando ls. Vamos aproveitar aquele nome de diretório que começa com 'u-'.

Está claro que para cada partição, que você queira montar, deverá existir um ponto de montagem. 
Vamos editar o arquivo ID.txt e salvá-lo com outro nome `fstab` na pasta Downloads com as seguintes linhas:

```shell
/dev/sda3 /home/chronos/u-9083272a606f9db71de7b7012b129c92046effc5/MyFiles/Downloads/Nome1 auto defaults 0 0
/dev/sda4 /home/chronos/u-9083272a606f9db71de7b7012b129c92046effc5/MyFiles/Downloads/Nome2 auto defaults 0 0
```

Uma vez criado o arquivo fstab, baixe e salve o arquivo 
[mount-internals.conf](https://raw.githubusercontent.com/MuntashirAkon/Chrome-OS-Multiboot/master/mount-internals.conf) na pasta Dowloads (Ctrl+S).

Vamos voltar novamente ao Terminal com Ctrl + Alt + F2 e vamos copiar dois dos arquivos em Downloads, para tal vamos digitar os seguintes comandos:

```shell
cd Downloads
sudo cp mount-internals.conf /etc/init/
sudo cp fstab /usr/local/
```

**Configuração final**

```shell
sudo mount -o rw,remount /
```

Pronto! Agora você poderá reiniciar seu Chrome.

---
Fonte: 
[https://github.com/MuntashirAkon/Chrome-OS-Multiboot/](https://github.com/MuntashirAkon/Chrome-OS-Multiboot/)

