---
layout: post
title: Montagem de partições internas no ChromeOS/Brunch
author: "Raimundo Nonato Launé macêdo"
tags:
- brunch
- ChromeOS
- montagem
- mount
- partições
---

Como você já deve ter notado, as `partições internas` do seu HD/SDD não são montadas por padrão (já que o Chrome OS nunca deve ser usado dessa forma). Portanto, para montar as partições internas, você precisará editar `/etc/fstab` depois de criar uma conta de usuário no Chrome OS. A ideia é montá-los dentro da pasta `~/Downloads` para que você possa acessar essas partições de lá.


A sugestão é, em vez de editar `/etc/fstab`, você criar um novo em local diferente `/usr/local/fstab` que poderá ser editado no Chrome OS mais tarde.

**Partições internas montáveis no disco**

Primeiro, você precisa determinar quais partições devem ser montadas na inicialização. Você pode obter os `IDs` do dispositivo usando vários métodos. Por exemplo, no Chrome OS, você pode obter uma lista de partições montáveis usando o seguinte comando:

Para verificar as partições montáveis no HDD, abra o `CROSH` (ctrl+alt+T) e execute os comandos:

```shell
shell
sudo /sbin/blkid -o full | grep -E "^/dev/sd.*TYPE" | grep -vE "EFI|STATE|ROOT-A"
```
Neste ponto você terá uma lista de partições montáveis (meu caso, por exemplo):

```shell
/dev/sda1: UUID="72FB-DEFB" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="0538aab4-ffd6-49cd-a555-3f08ef2124ec"
/dev/sda2: LABEL="Mint19.3" UUID="833aae96-3d32-41ee-b5ea-99a959506114" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="Mint19.3" PARTUUID="454a609f-6711-481f-ad00-c7328cf99ae7"
/dev/sda3: LABEL="ChromeOS" BLOCK_SIZE="512" UUID="284A910B20CA3FF7" TYPE="ntfs" PARTLABEL="ChromeOS" PARTUUID="c36e518b-455c-4d52-859c-9c0cd9328649"
/dev/sda4: LABEL="rootMX19" UUID="3d274ab4-da97-4d66-a447-6ab1d337beef" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="MX19" PARTUUID="82b570a9-76c0-4b71-b093-b2baeaa0e75c"
/dev/sda5: LABEL="DadosSSD" UUID="2bf709a6-dccd-4da9-932f-7fe67bed0fd2" BLOCK_SIZE="4096" TYPE="ext4" PARTLABEL="DadosSSD" PARTUUID="21bc6803-de42-454b-a9c6-4e6045427108"
```

Tome nota das partições que você quer montar automaticamente (no nosso caso, por exemplo, montamos apenas `/dev/sda5`).

**Ponto de montagem da partição**

Importante observar que a pasta ~/Dowloads é montada em local específico para cada usuário e depende da versão do Chrome OS. Para descobrir o seu local em particular, execute o comando:

```shell
echo /home/$USER/u-$CROS_USER_ID_HASH/MyFiles/Downloads
```

Se você estiver utilizando uma versão do Chrome OS não superior à 78, deverá utilizar:

```shell
echo /home/$USER/u-$CROS_USER_ID_HASH/Downloads
```
Você obterá como resposta algo do tipo (meu caso):

```shell 
/home/chronos/u-9083272a606f9db71de7b7012b129c92046effc5/MyFiles/Downloads
```

**Estrutura do arquivo fstab**

Está claro que para cada partição, que você queira montar, deverá existir um ponto de montagem. Assim, o arquivo fstab deverá ter a seguinte estrutura (por exemplo):

```shell
/dev/sda1 /home/chronos/u-9083272a606f9db71de7b7012b129c92046effc5/MyFiles/Downloads/Nome1 auto default 0 0
/dev/sda2 /home/chronos/u-9083272a606f9db71de7b7012b129c92046effc5/MyFiles/Downloads/Nome2 auto default 0 0
/dev/sda3 /home/chronos/u-9083272a606f9db71de7b7012b129c92046effc5/MyFiles/Downloads/Nome3 auto default 0 0
```

**Criação do arquivo /usr/local/fstab**

Para criar o arquivo /usr/local/fstab, execute o comando:

```shell
sudo vim /usr/local/fstab
```

Adicione a este arquivo as linhas de montagens conforme as suas necessidades, seguindo a estrutura acima e salve-o. No nosso caso:

```shell
/dev/sda5 /home/chronos/u-9083272a606f9db71de7b7012b129c92046effc5/MyFiles/Downloads/Dados auto defaults 0 0
```

Observe que nós montamos apenas a partição sda5 e terá como ponto de montagem ~/MyFiles/Downloads/Dados.

>**Nota:** 
 Lembre que o código u-9083272a606f9db71de7b7012b129c92046effc5 deve ser alterado em conformidade com o resultado obtido pelo comando 
> 
echo /home/$USER/u-$CROS_USER_ID_HASH/MyFiles/Downloads.

**Configuração final**

Uma vez criado e editado o arquivo fstab, baixe e salve o arquivo 
[mount-internals.conf](https://raw.githubusercontent.com/MuntashirAkon/Chrome-OS-Multiboot/master/mount-internals.conf) em ~/Dowloads.
Monte a partição root para escrita com o comando:

```shell
sudo mount -o rw,remount /
```

Finalmente copie o arquivo mount-internals.conf recém baixado para /etc/init/ com o comando:

```shell
sudo cp ~/Downloads/mount-internals.conf /etc/init/
```

Pronto! Agora você poderá reiniciar seu Chrome.

---
Fonte: 
[https://github.com/MuntashirAkon/Chrome-OS-Multiboot/](https://github.com/MuntashirAkon/Chrome-OS-Multiboot/)

