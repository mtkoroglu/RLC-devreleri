# RLC Devreleri
Bu sayfada kapasitör ve endüktör devre elemanlarını anlamaya çalışıp RC, RL ve RLC devrelerinin basamak (zorlanmış) ve doğal cevaplarına bakacağız.
## RC devresi
Kapasitörün matematiksel modeli 

<img src="eşitlikler/kapasitör denklemi.JPG" alt="kapasitör denklemi." height="45"/>

olarak verilmişti. Bu birinci dereceden adi diferansiyel denklemde eşitliğin her iki tarafının k=t<sub>0</sub> anından k=t anına kadar integralini alırsak aşağıdaki çözümü elde ederiz.

<img src="eşitlikler/kapasitör denklemi çözümü.JPG" alt="kapasitör denklemi çözümü." height="60"/>

Buradaki k denilen kukla değişkene<sup>1</sup> derslerimizde τ demiştik. Aşağıda zaman sabiti (time constant) kavramı karşımıza çıktığında zaman sabitine τ diyeceğimizden, bundan sonra karışıklık olmasın diye integral alırken zamanı temsil eden yatay ekseni k notasyonu ile göstereceğiz.

Şimdi, *Şekil 1*'de gördüğümüz üzere bir güç kaynağı, bir rezistör ve bir kapasitörden oluşan RC devresinin basamak cevabını<sup>2</sup> analiz edelim.

<img src="şekiller/RC devresi basamak cevabı.jpg" alt="RC devresi." height="300"/>

*Şekil 1:* RC devresi.

*Şekil 1*'de gösterilen devrede ok yönünde dolaşırken Kirchoff'un Gerilimler Yasasını (KGY) uygularsak aşağıdaki eşitliği elde ederiz.</br>
-V<sub>cc</sub> + Ri(t) + V<sub>C</sub>(t) = 0

Devremizde kapasitörün üzerinden geçen akım i<sub>C</sub>(t), aynı yönde tamamlandıklarından dolayı devrede dolaşan akım i(t)'ye eşit (i.e., i<sub>C</sub>(t)=i(t)). Bunu göz önünde bulundurarak yukarıda elde ettiğimiz ilk denklem olan kapasitörün matematiksel modelini KGY ile elde ettiğimiz denklemde yerine koyacak olursak

<img src="eşitlikler/KGY sonucu.JPG" alt="KGY sonucu elde edilen eşitlik" height="55"/>

birinci dereceden adi diferansiyel denklemini elde ederiz. Bu denklemi düzenlersek

<img src="eşitlikler/KGY sonucu düzenlenmiş.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş hali" height="55"/>

haline gelir. Biraz daha manipüle edersek

<img src="eşitlikler/KGY sonucu düzenlenmiş manipüle.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>


## Dipnotlar
<sup>1</sup> İng. Dummy variable.</br>
<sup>2</sup> İng. Step response. Basamak cevabı [1]'de geçen bir kavramdır. Aynı kaynağı referans kullanan [2], bu cevabı zorlanmış cevap diye isimlendirerek yaklaşımı daha genelleştirmiştir (i.e., güç kaynağından devreye etki eden sinyalin sadece sabit bir DC gerilim olma şartı yok). Biz burada [1]'de geçen haliyle kullanmayı uygun gördük. 

## Referanslar
[1] J. W. Nilsson, S. A. Riedel, Electric Circuits, 10. Baskı, Prentice Hall, Upper Saddle River, New Jersey, 2014.</br>
[2] M. Ö. Efe, Devre Analizi-I, 3. Baskı, Seçkin Yayıncılık, Ankara, 2016.
