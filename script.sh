#!/bin/bash
#-----usuarios no SO
#verificar qual o ultimo numero no sistema com o comando: cat /etc/passwd
#geralmente o último é 1001 em uma instalação padrão com um usuário, 
#para garantir vamos iniciar em 1090
#serão criados os usuários conforme o conteúdo do arquivo alunos.txt
#a senha será 123 para todos.
num=1092
while read p; do
  echo "$p:123:$num:100:Student:/var/www/html/$p:/bin/bash" | newusers
  num=$((num+1))
done <usuario.txt
#-----trocar senha no primeiro login
while read p; do
  chage -d 0 "$p"
done <usuario.txt
#-----Criar pasta /home/
#definir as permissões
while read p; do
 mkdir /home/"$p"
 chown -R "$p":users /var/www/html/"$p"
 chown -R "$p":users /home/"$p"
 chmod 775 -R /var/www/html/"$p"
done <usuario.txt