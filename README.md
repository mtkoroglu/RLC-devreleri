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
-V<sub>cc</sub> + Ri(t) + V<sub>C</sub>

## Dipnotlar
<sup>1</sup> İng. Dummy variable.</br>
<sup>2</sup> İng. Step response. Basamak cevabı [1]'de geçen bir kavramdır. Aynı kaynağı referans kullanan [2], bu cevabı zorlanmış cevap diye isimlendirerek yaklaşımı daha genelleştirmiştir (i.e., güç kaynağından devreye etki eden sinyalin sadece sabit bir DC gerilim olma şartı yok). Biz burada [1]'de geçen haliyle kullanmayı uygun gördük. 

## Referanslar
[1] J. W. Nilsson, S. A. Riedel, Electric Circuits, 10. Baskı, Prentice Hall, Upper Saddle River, New Jersey, 2014.</br>
[2] M. Ö. Efe, Devre Analizi-I, 3. Baskı, Seçkin Yayıncılık, Ankara, 2016.
