#! /usr/bin/bash

# eecho komutu
# echo Merhaba!

# create a file and folder
#mkdir yeniKlasor
#touch "yeniKlasor/dosya.txt"
#echo "Dosya ve klasör tek satirda olusturuldu" >> "yeniKlasor/dosya.txt"
#echo "Islem tamamlandi"

# Variables
NAME="AHMET"
echo $NAME

# Get User Input
#read -p "enter your name" NAME
#echo $NAME

#Conditionals

CITY="Cenevre"
    if [ "$CITY" == "Cenevre" ]
        then
        echo "Dogru Tahmin"
    elif [ "$CITY" == "Zurih" ]
        then
        echo "Bu da Zurih olarak dogru"
    else 
        echo "Yanlis oldu"
    fi

nelerogreniyoruz() {
    echo "$1 ve $2 ogrendik, simdi $3 ogreniyoruz"
}
nelerogreniyoruz "HTML" "CSS" "JAVASCRIPT"

printsomething() {
    echo Merhaba $1
    return 0
}
printsomething 2021
echo Function has a return value $?

read -p "10 yildir Isvicrede misiniz? E/H" CEVAP
case "$CEVAP" in
    [eE])
        echo "Vaandasliga basvurabilirsiniz"
    ;;
    [hH])
        echo "Biraz daha bekle"
    ;;
    *)
        echo "e/E ve h/H yaziniz"
    ;;
esac
===========================
# let aritmetik islem yapmak icin kullanilir/ degisken atamak icin degil!!
let a=5+4
echo $a
let "a = 5 + 5"
echo $a
let a++
echo $a

#expr // arirmetik islem yapmak icin kullanilir/ echo ya gerek yok..dogrudan gosterir islem sonucunu
expr 5 + 6
expr 11 % 2
expr 7 + 9

# Double paranthesis
a =$(( 4 + 12))
echo $a
b=$(( 3 + 9 ))
echo $b

#WHILE LOOP==============
LINE=1  #Birinci satira degisken atadik
while read -r CURRENT_LINE # Birinci satiri Okur
do
    echo "$LINE: $CURRENT_LINE" # Donguye girerek ilk satirdan itibaren satir numarasini bel'rterek iceriklerini listeler
    ((LINE++))
done < "./test.txt" #Belge kaynagini belirtmek icin kucuk isareti ve dosyayi belirtiyoruz

#UNTIL================
SAYAC=1
until [ $SAYAC -gt 5 ] # Sayac greater than 5 olana kadar bir artirarak islem yapar
    do
    echo $SAYAC
    ((SAYAC++))
    done
echo tamamlandi 
#=========================
#SIMPLE FOR LOOP
LISTE="Javascript React API SQL jENKINS JIRA"
for KONU in $LISTE
    do
    echo $KONU ogrenecegiz.
    done
#===================================
DOSYALAR=$(ls *.txt)
YENI="yeni"
for DOSYA in $DOSYALAR
do 
    echo "Dosya adi $DOSYA $YENI-DOSYA olarak degistir"
    mv $DOSYA $YENI-DOSYA
done 

#==================================
for filename in $(ls)
do 
    ext=${filename##*\.}
    case "$ext" in
    js) echo "$filename: Javascript Dosyasi"
    ;;
    sh) echo "$filename: Shell Dosyasi"
    ;;
    html) echo "$filename: HTML Dosyasi"
    ;;
    *) echo "$filename: Bu dosya turu kontrol edilemiyor"
    ;;
    esac
done

#BREAK===============
for ((index=0; index<10; index++))
do 
    if [ $index -gt 5 ]
    then    
        break
    fi
        echo $index
done

#CONTINUE============
for ((index=0; index<10; index++))
do 
    if [ $index -gt 5 ] || [ $index -eq 8 ]
    then    
        continue
    fi
        echo $index
done

#--------