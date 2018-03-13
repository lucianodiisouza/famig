!#/bin/bash

echo "Rotina criada por Luciano dii Souza"
echo "Famig 2018"
echo "instalar IRPF 2018"

sudo apt-get install openjdk-8-jre

wget -c -P /home/$USER/Downloads http://downloadirpf.receita.fazenda.gov.br/irpf/2018/irpf/arquivos/IRPF2018-1.0.zip

cd /home/$USER/Downloads

unzip IRPF2018*.zip

sudo mv IRPF2018/ /opt

rm IRPF2018*.zip

sudo cp /opt/IRPF2018/irpf.jar /opt/IRPF2018/irpf.zip

sudo unzip -d /opt/IRPF2018/ /opt/IRPF2018/irpf.zip icones/RFB.png

tee /home/$USER/.local/share/applications/irpf-2018.desktop <<IR2018
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Name=IRPF 2018
Comment=IRPF 2018                                                 
Exec=sh -c "java -jar /opt/IRPF2018/irpf.jar"
Type=Application
Icon=/opt/IRPF2018/icones/RFB.png
Terminal=false
IR2018

chmod +x /home/$USER/.local/share/applications/irpf-2018.desktop
