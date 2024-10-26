IP: 15.228.74.110
Usuário: ubuntu
usar chave privada "FTP_SERV.pem" para conectar

WINDOWS 
Navegue pelo terminal até o local aonde a chave .pem está localizada
Execute o comando:
root
- Abra um cliente SSH e dar o comando:
EXEMPLO:
ssh -i "FTP_SERV.pem" ubuntu@ec2-15-228-74-110.sa-east-1.compute.amazonaws.com
escreva: 
yes
Conexão feita!

LINUX
Abra um cliente SSH.
Localize o arquivo de chave privada. A chave usada para executar esta instância é FTP_SERV.pem
Execute este comando, se necessário, para garantir que sua chave não fique visível publicamente.
chmod 400 "FTP_SERV.pem"
Conecte-se à sua instância usando sua DNS pública:
ec2-15-228-74-110.sa-east-1.compute.amazonaws.com
Exemplo:
ssh -i "FTP_SERV.pem" ubuntu@ec2-15-228-74-110.sa-east-1.compute.amazonaws.com


Estrutura FTP USANDO apache2
- Modificação de index
- Script para criar usuário
link de vídeo: https://www.youtube.com/watch?v=1EGxIT5P4VA&t=303s