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

<img src="eşitlikler/KGY_sonucu_0.JPG" alt="KGY sonucu elde edilen eşitlik" height="55"/>

birinci dereceden adi diferansiyel denklemini elde ederiz. Bu denklemi düzenlersek

<img src="eşitlikler/KGY_sonucu_1.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş hali" height="55"/>

haline gelir. Biraz daha manipüle edersek

<img src="eşitlikler/KGY_sonucu_2.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>

denklemini elde ederiz. Eşitliğin her iki tarafının integralini k=t<sub>0</sub>'dan k=t anına kadar alalım.

<img src="eşitlikler/KGY_sonucu_3.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>

Dikkat edilirse soldaki ifade doğal logaritma ile alakalı bir integral. İntegralleri alarak ilerleyecek olursak

<img src="eşitlikler/KGY_sonucu_4.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/></br>
<img src="eşitlikler/KGY_sonucu_5.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>

soldaki doğal logaritma içeren ifadelerle yapılan çıkarma işlemi, aşağıdaki halini alırken

<img src="eşitlikler/KGY_sonucu_6.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>

her iki tarafı e ≈ 2.71'in üssü olarak yazarsak (birşey değişmeyeği gibi sol taraftaki doğal logaritma ln ifadesinden kurtulmuş olacağız)

<img src="eşitlikler/KGY_sonucu_7.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>

en sonunda aşağıdaki çözümü elde ederiz.

<img src="eşitlikler/KGY_sonucu_8.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>

Genelde t<sub>0</sub>=0 olarak kabul ettiğimizden elde ettiğimiz çözüm aşağıdaki son halini alır.

<img src="eşitlikler/KGY_sonucu_9.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>

Aşağıda grafiğini çizdireceğimiz kapasitörün üzerindeki voltajın matematiksel ifadesi olan bu ifade hakkında hemen kabaca (yani ekstrem değerlere bakarak) düşünecek olursak t=0 anında V<sub>C</sub>(0)=V<sub>C</sub>(0) ve t→∞ durumunda VC(∞)=V<sub>cc</sub> olduğunu görebiliriz. Ayrıca zaman sabitimiz olan τ = RC arttıkça V<sub>C</sub>(t)'nin V<sub>cc</sub>'ye ulaşması yavaşlarken τ azalırken V<sub>C</sub>(t)'nin V<sub>cc</sub>'ye ulaşması hızlanır.

Şimdi elde ettiğimiz çözümün değişik R ve C değerlerine göre grafiklerini çizdirelim ve zaman sabitinin kapasitörün voltajına olan etkisini görelim.

## Dipnotlar
<sup>1</sup> İng. Dummy variable.</br>
<sup>2</sup> İng. Step response. Basamak cevabı [1]'de geçen bir kavramdır. Aynı kaynağı referans kullanan [2], bu cevabı zorlanmış cevap diye isimlendirerek yaklaşımı daha genelleştirmiştir (i.e., güç kaynağından devreye etki eden sinyalin sadece sabit bir DC gerilim olma şartı yok). Biz burada [1]'de geçen haliyle kullanmayı uygun gördük. 

## Referanslar
[1] J. W. Nilsson, S. A. Riedel, Electric Circuits, 10. Baskı, Prentice Hall, Upper Saddle River, New Jersey, 2014.</br>
[2] M. Ö. Efe, Devre Analizi-I, 3. Baskı, Seçkin Yayıncılık, Ankara, 2016.
