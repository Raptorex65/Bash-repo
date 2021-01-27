
## DOSYA ADINI MAIN OLARAK DEGISTIR
DOSYALAR=$(ls ./*.js)
MAIN="main"
for DOSYA in $DOSYALAR
do 
    echo "Dosya adi $DOSYA $MAIN-DOSYA olarak degistir"
    mv $DOSYA $MAIN-DOSYA
done 



## GIRILEN IKI SAYIYI TOPLAMA
sayiTopla() {
    read -p "Bir sayi giriniz?" B
    read -p "Bir sayi giriniz?" C

    a =$(( B + C ))
    echo $a
}
sayiTopla "4" "6"



##JS DOSYASINDAKI innerHTML KELIMELERINI TOPLAMA
for filename in $(ls)
do 
    ext=${filename##*\.}
    case "$ext" in
    js) echo "$filename: Javascript Dosyasi" kelimeTopla()
    ;;

    esac
done


kelimeTopla (){
LINE=1  #Birinci satira degisken atadik
while read -r CURRENT_LINE # Birinci satiri Okur
do
    echo "$LINE: $CURRENT_LINE" # Donguye girerek ilk satirdan itibaren satir numarasini bel'rterek iceriklerini listeler
    ((LINE++))
    $SAYAC =+ LINE
    echo $SAYAC
done < "./app.js" #Belge kaynagini belirtmek icin kucuk isareti ve dosyayi belirtiyoruz

}




