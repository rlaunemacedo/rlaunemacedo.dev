---
title: "ChromeOS-Brunch dual boot com linux"
layout: post
author: "Raimundo Nonato Launé macêdo"
---

Se você já possui o Linux instalado e funcionando em seu computador e quer instalar o Chrome OS, do projeto brunch, em “dual boot”, este tutorial pode ajudá-lo.

O procedimento aqui adotado foi testado em dois notebooks baseados no Intel. Um apenas com Linux Mint 19.3 instalado e outro que já possuía dual boot com a mesma versão do Mint e Windows 10. Nos dois notebooks, utilizamos o terminal de comandos do linux.


Supondo que você já possua alguma habilidade com a criação de partições em HD/SSD com gparted ou outro aplicativo similar, bem como a manipulação de entradas no grub com o grub-customize ou outra forma, não iremos entrar nestes detalhes.

### O processo de istalação consiste em:
* Baixar os arquivos necessários para a instalação do brunch (imagem e o brunch, ambos compactados), aqui iremos referenciá-lo como ChromeOS;
* Instalação dos utilitários linux necessárias à manipulação de arquivos compactados, edição de grub, manipulação de partições no disco e das ferramentas pv e cgpt;
* Descompactar o conteúdo dos arquivos baixados em uma pasta criada para tal finalidade;
* Escolha/criação da partição onde será instalado o ChromeOS;
* Montagem da partição escolhida em um ponto de montagem;
* Instalação do ChromeOS; e
* Inclusão da entrada no menu do grub.

### Então vamos começar

#### CromeOS/Brunch
Baixar a imagem de recuperação do CromeOS e o lançamento Brunch, ambos com a mesma versão, por exemplo em nosso caso, instalamos a versão 94. 
Links: 
* [Imagem ChromeOS](https://chromiumdash.appspot.com/serving-builds)
* [Brunch](https://github.com/sebanc/brunch/releases)

#### pv, cgpt, tar, e unzip
Certifique-se de já ter instalado estes programas aqui, pois necessários:
```
sudo apt update && sudo apt -y install pv cgpt tar unzip
```
#### Organização dos arquivos já descompactados em uma pasta
Devemos criar uma pasta para colocar os aquivos necessários à instalação do ChromeOS. Para efeitos deste artigo, criaremos a pasta `Chomeos` em `Downloads`:
```
mkdir ~/Dowloads/Chromeos
```
Extrair o conteúdos dos arquivos baixados para a pasta recém criada. Renomear o arquivo com extensão .bin para rammus_recovery.bin (este será o único arquivo a ser renomeado). Ao final, deveremos ter os cinco arquivos desta lista:

* chromeos-install.sh
* efi_legacy.img
* efi_secure.img
* rammus_recovery.bin
* rootc.img

#### Partição para instalação do ChromeOS
Neste ponto você deverá escolher ou criar a partição na qual o ChromeOS será instalado. A partição não poderá ter tamanho inferio a 16GB. (sugestão 30GB). Caso não exista, use o gparted para determinar a partição e formate-a como ext4 ou ntfs. Sugerimos ext4.

Certifique-se de ter instalado o gparted com o comando:
```
sudo apt -y install gparted
```
Verificando as partições existentes (opcional)
```
lsblk -e7
```

#### Montagem da partição
Uma vez escolhida a partição que receberá o ChromeOS, devemos montá-la para iniciarmos a instalação. Primeiro criaremos um local de montagem e depois montaremos a partição neste ponto. Para efeito deste artigo, como exemplo, utilizaremos a partição `sda5`. (Nota: No comando mount, NÃO esqueça de substituir a partição para o seu caso em particular):
```
mkdir -p ~/tmpmount
sudo mount /dev/sda5 ~/tmpmount
```
#### Instalação
Motada a partição de destino, vamos instalar o ChromeOS. Para tanto, vamos nos posicionar na pasta onde estão os arquivos que baixamos:
```
cd ~/Downloads/Chromeos 
sudo bash chromeos-install.sh -src rammus_recovery.bin -dst ~/tmpmount/chromeos.img -s 30
```
O script pedirá confirmação. Se você estiver pronto para instalar, digite `yes` para confirmar.

#### Inclusão no menu do grub
Vamos sugerir a utilização do grub-customize para esta finalidade.

“Script” sugerido para entrada do grub (Nota: lembre de alterar `sda5` para a partição que você escolheu/criou anteriormente!):
```
rmmod tpm
img_part=/dev/sda5
img_path=/chromeos.img
search --no-floppy --set=root --file $img_path
loopback loop $img_path
linux (loop,7)/kernel boot=local noresume noswap loglevel=7 disablevmx=off  \
	cros_secure cros_debug options= loop.max_part=16 img_part=$img_part img_path=$img_path \
	console= vt.global_cursor_default=0 brunch_bootsplash=default
initrd (loop,7)/lib/firmware/amd-ucode.img (loop,7)/lib/firmware/intel-ucode.img (loop,7)/initramfs.img
```
##### grub-customize
* No menu “Editar” do grub-customize, opte por “Novo”;
* Na janela “Editor de Entradas – Grub Customizer”, dê um nome para a entrada (Exemplo: ChromeOS) e, para tipo, escolha “Outro”;
* Copie o “script” acima neste tutorial e cole na caixa de textos da janela “Editor de Entradas – Grub Customizer”;
* Com todos os campos preenchidos na janela “Editor de Entradas – Grub Customizer”, pressione o botão “OK” e a janela irá se fechar;
* De volta à janela anterior do Grub Customize, pressione o botão salvar

#### Desmontando a partição
Agora você já pode desmontar a partição com o comando:
```
sudo umount ~/tmpmount
```
Pronto, agora você já pode reiniciar o computador e no menu do grub selecione a entrada ChromeOS. Da primeira vez demorará um pouco e você será convidado a fornecer as informações da nova máquina Chrome OS.

---
Fonte: [github.com/sebanc/brunch](https://github.com/sebanc/brunch/blob/master/install-with-linux.md)
(seção: Dualboot installations).
