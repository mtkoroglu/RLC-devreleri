# RLC Devreleri (RLC Circuits)
Bu sayfada devre elemanlarından **kapasitör** ve **endüktör**'ü anlamaya çalışıp RC, RL ve RLC devrelerinin zorlanmış (basamak) ve doğal cevaplarına bakacağız.
## Kapasitör (veya Kondansatör veya Sığa)
Kapasitörün matematiksel modeli

<img src="eşitlikler/kapasitör denklemi.JPG" alt="kapasitör denklemi" height="50"/>

olarak verilmişti. Bu birinci dereceden âdi diferansiyel denklemde eşitliğin her iki tarafının k=t<sub>0</sub> anından k=t anına kadar integralini alırsak aşağıdaki ifadeyi elde ederiz.

<img src="eşitlikler/kapasitör denklemi çözümü.JPG" alt="kapasitör denklemi çözümü" height="55"/>

Normalde zamanı temsil eden yatay eksen değişkenine t dememize rağmen burada t artık belirli bir anı temsil ettiğinden dolayı k dedik. Bu k değişkeni kukla değişken<sup>1</sup> olarak bilinir.</br>
### RC Devresinin Zorlanmış (Basamak) Cevabı
Şimdi, *Şekil 1*'de gördüğümüz üzere güç kaynağı, rezistör ve kapasitörden oluşan RC devresinin basamak cevabını<sup>2</sup> analiz edelim.

<img src="şekiller/RC devresi basamak cevabı.jpg" alt="RC devresi" height="300"/>

*Şekil 1:* Güç kaynağına bağlı seri bir RC devresi.

Yukarıdaki devrede ok yönünde dolaşırken Kirchoff'un Gerilimler Yasasını<sup>3</sup> (KGY) uygularsak aşağıdaki eşitliği elde ederiz.

-V<sub>cc</sub> + Ri(t) + V<sub>C</sub>(t) = 0

Devremizde kapasitörün üzerinden geçen akım i<sub>C</sub>(t), aynı yönde tanımlandıklarından dolayı devrede dolaşan akım i(t)'ye eşit (i.e., i<sub>C</sub>(t)=i(t)). Bunu göz önünde bulundurarak yukarıda elde ettiğimiz ilk denklem olan kapasitörün matematiksel modelini KGY ile elde ettiğimiz denklemde yerine koyacak olursak

<img src="eşitlikler/KGY_sonucu_0.JPG" alt="KGY sonucu elde edilen eşitlik" height="55"/>

birinci dereceden adi diferansiyel denklemini elde ederiz. Bu denklemi düzenlersek

<img src="eşitlikler/KGY_sonucu_1.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş hali" height="55"/>

haline gelir. Biraz daha manipüle edersek

<img src="eşitlikler/KGY_sonucu_2.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>

denklemini elde ederiz. Eşitliğin her iki tarafının integralini k=t<sub>0</sub>'dan k=t anına kadar alalım.

<img src="eşitlikler/KGY_sonucu_3.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>

Dikkat edilirse soldaki ifade doğal logaritma ile alakalı bir integral. İntegralleri alarak ilerleyecek olursak

<img src="eşitlikler/KGY_sonucu_4.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="60"/>

<img src="eşitlikler/KGY_sonucu_5.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="50"/>

soldaki doğal logaritma içeren ifadelerle yapılan çıkarma işlemi, aşağıdaki halini alırken

<img src="eşitlikler/KGY_sonucu_6.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>

her iki tarafı e ≈ 2.71'in üssü olarak yazarsak (birşey değişmeyeği gibi sol taraftaki doğal logaritma ln ifadesinden kurtulmuş olacağız)

<img src="eşitlikler/KGY_sonucu_7.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="55"/>

en sonunda aşağıdaki çözümü elde ederiz.

<img src="eşitlikler/KGY_sonucu_8.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="50"/>

Genelde t<sub>0</sub>=0 olarak kabul ettiğimizden elde ettiğimiz çözüm aşağıdaki son halini alır.

<img src="eşitlikler/KGY_sonucu_9.JPG" alt="KGY sonucu elde edilen eşitliğin düzenlenmiş ve manipüle edilmiş hali" height="50"/>

Kapasitörün üzerindeki voltajın analitik çözümü olan bu ifadenin uç (ekstrem) değerlerini düşünecek olursak: t=0 anında V<sub>C</sub>(0)=V<sub>C</sub>(0) ve t→∞ durumunda V<sub>C</sub>(∞)=V<sub>cc</sub> olduğunu görebiliriz. Yani zaman ilerledikçe kapasitör voltajı er ya da geç V<sub>cc</sub>'ye oturuyor. Burada V<sub>C</sub>(0)'nin V<sub>cc</sub>'ye ulaşma hızını belirleyen zaman sabiti olarak bilinen τ = RC değeri. Zaman sabiti büyüdükçe V<sub>C</sub>(t)'nin V<sub>cc</sub>'ye ulaşması yavaşlarken küçüldükçe de V<sub>C</sub>(t)'nin V<sub>cc</sub>'ye ulaşması hızlanır.

Şimdi elde ettiğimiz çözümün değişik R ve C değerlerine göre grafiklerini çizdirelim ve zaman sabiti τ = RC'nin kapasitörün voltajına olan etkisini görelim.

<img src="şekiller/RC_devresi_basamak_cevabı_grafik.png" alt="RC devresinin basamak cevabının değişik R ve C değerlerine göre çizdirilmiş grafiği" height="450"/>

*Şekil 2:* RC devresinin basamak cevabının V<sub>cc</sub> = 5V, V<sub>C</sub>(0) = 0V ve değişik R ve C değerlerine göre çizdirilen grafiği<sup>4</sup>.

<img src="şekiller/RC_circuit_step_response.gif" alt="RC devresinin basamak cevabının değişik R ve C değerlerine göre çizdirilmiş animasyonu" height="450"/>

*Şekil 3:* RC devresinin basamak cevabının V<sub>cc</sub> = 5V, V<sub>C</sub>(0) = 0V ve değişik R ve C değerlerine göre çizdirilen animasyonu<sup>4</sup>.

### RC Devresinin Doğal Cevabı
*Şekil 1*'de verilen devre ve de *Şekil 2*'de alınan cevap *Şekil 4*'deki devrenin t=0'dan t=2'ye kadar olan haline (yani ilk 2 saniyesine) tekabül etmektedir.

<img src="şekiller/RC devresi anahtarlama.png" alt="RC devresinin anahtarlama ile basamak ve doğal cevabının üretilmesi" height="300"/>

*Şekil 4:* RC devresinin anahtarlamalı hali.

Zamanın başlangıcında **SW1** ile gösterilen ilk anahtarın kapanmasıyla V<sub>cc</sub> ile gösterilen güç kaynağından devrenin R ve C elemanlarına akım gelmeye başlıyor. Devrenin ortasında yer alan **SW2** anahtarı zamanın başında açık halde. Zaman t=2 saniye olduğu ana kadar devrenin basamak cevabı söz konusu. Zaman t=2s olduğu anda **SW1** açılıyor (yani artık üzerinden akım geçmiyor) ve **SW2** kapanıyor, böylece *Şekil 4*'de verilen anahtarlamalı devre *Şekil 5*'deki halini alıyor.

<img src="şekiller/RC devresi doğal cevabı.jpg" alt="RC devresinin doğal cevap devresi" height="300"/>

*Şekil 5:* Yukarıda V<sub>cc</sub> ile gösterilen gerilim kaynağının anahtarlamalar vasıtasıyla dışarıda bırakılmasıyla oluşan RC devresi.

Devrede ok yönünde dolaşıp Kirchoff'un Gerilimler Yasasını (KGY) uygularsak elde edeceğimiz denklem aşağıdaki gibi olur.

<img src="eşitlikler/RC devresi doğal cevabı 1.jpg" alt="RC devresinin doğal cevabı denklem 1" height="30"/>

Devrede kapasitörün depoladığı enerjinin boşalmaya başlamasıyla oluşan akım i(t) kapasitörün üzerinden geçen akım i<sub>C</sub>(t)'ye ters yönde (i.e., i(t)=−i<sub>C</sub>(t)). Yukarıda elde edilen denklemde bu değişikliği yaparsak

<img src="eşitlikler/RC devresi doğal cevabı 2.jpg" alt="RC devresinin doğal cevabı denklem 2" height="30"/>

elde ederiz. Kapasitörün matematiksel modelini kullanarak

<img src="eşitlikler/RC devresi doğal cevabı 3.jpg" alt="RC devresinin doğal cevabı denklem 3" height="50"/>

elde ederiz. Biraz manipüle edersek

<img src="eşitlikler/RC devresi doğal cevabı 4.jpg" alt="RC devresinin doğal cevabı denklem 4" height="60"/>

denklemini elde ederiz. Eşitliğin her iki tarafının integralini k=0'dan k=t anına kadar alalım.

<img src="eşitlikler/RC devresi doğal cevabı 5.jpg" alt="RC devresinin doğal cevabı denklem 5" height="60"/>

Dikkat edilirse soldaki ifade doğal logaritma ile alakalı bir integral. İntegralleri alarak ilerleyecek olursak

<img src="eşitlikler/RC devresi doğal cevabı 6.jpg" alt="RC devresinin doğal cevabı denklem 6" height="65"/>

ve sınır koşullarını yerlerine koyarsak

<img src="eşitlikler/RC devresi doğal cevabı 7.jpg" alt="RC devresinin doğal cevabı denklem 7" height="65"/>

soldaki doğal logaritma içeren ifadelerle yapılan çıkarma işlemi, aşağıdaki halini alırken

<img src="eşitlikler/RC devresi doğal cevabı 8.jpg" alt="RC devresinin doğal cevabı denklem 8" height="65"/>

her iki tarafı e≈2.71'in üssü olarak yazarsak (birşey değişmeyeği gibi sol taraftaki doğal logaritma ln ifadesinden kurtulmuş olacağız)

<img src="eşitlikler/RC devresi doğal cevabı 9.jpg" alt="RC devresinin doğal cevabı denklem 9" height="50"/>

ve en sonunda RC devresinin doğal cevabını aşağıdaki gibi elde ederiz.

<img src="eşitlikler/RC devresi doğal cevabı 10.jpg" alt="RC devresinin doğal cevabı denklem 10" height="40"/>

Elde ettiğimiz devrenin t=2s'den t→∞ tepkisine RC devresinin doğal cevabı<sup>5</sup> deniyor. RC devresinin doğal cevabının değişik R ve C değerlerine göre çizdirilmiş halini *Şekil 6*'de görebilirsiniz.

<img src="şekiller/RC_devresi_dogal_cevabı_grafik.png" alt="RC devresinin basamak cevabının değişik R ve C değerlerine göre çizdirilmiş hali" height="450"/>

*Şekil 6:* RC devresinin doğal cevabının V<sub>C</sub>(0) = 5V ve değişik R ve C değerlerine göre grafiği<sup>6</sup>.

Burada yine kabaca uç (ekstrem) değerlere bakarak analiz yapacak olursak V<sub>C</sub>(0) = V<sub>cc</sub> olarak başlamış. Dikkat edin, eğer RC devresinin ilk 2s'deki cevabında R ve/veya C değerleri yüksek değerler olsaydı, o zaman V<sub>C</sub>(0) değeri V<sub>cc</sub>'den daha düşük bir değer de olabilirdi. Devrede gerilim kaynağının çıkarılması ve **SW2** anahtırının kapanması ile kapasitör üzerinde deoplanmış enerji, direnç R üzerinden zaman sabiti tau = RC ile bağlantılı olarak tükeniyor ve böylece V<sub>C</sub>(t) zaman ilerlerken sıfırlanıyor.
## Endüktör (veya Bobin)
Endüktörün matematiksel modeli

<img src="eşitlikler/endüktör denklemi.JPG" alt="kapasitör denklemi." height="50"/>

olarak verilmişti. Bu birinci dereceden adi diferansiyel denklemde eşitliğin her iki tarafının k=t<sub>0</sub> anından k=t anına kadar integralini alırsak aşağıdaki çözümü elde ederiz.

<img src="eşitlikler/endüktör denklemi çözümü.JPG" alt="kapasitör denklemi çözümü." height="55"/>

Buradaki k isimli kukla değişkenin ne olduğunu derslerimizde ve yukarıda kapasitörün matematiksel modeline bakarken açıkladık.
### RL Devresinin Basamak Cevabı
Aşağıdaki grafikleri sonuç veren denklemler ve nasıl elde edildiklerini gösteren videolar DBS'de.

<img src="şekiller/RL devresi basamak cevabı.jpg" alt="RL devresi" height="300"/>

*Şekil 6:* RL devresine güç kaynağının etki eden hali.

<img src="şekiller/RL_devresi_basamak_cevabı_grafik.png" alt="RL devresinin basamak cevabının değişik R ve L değerlerine göre çizdirilmiş hali" height="400"/>

*Şekil 7:* RL devresinin basamak cevabının V<sub>cc</sub> = 5V, i<sub>L</sub>(0) = 0A ve değişik R ve L değerlerine göre çizdirilmiş grafiği<sup>7</sup>.
### RL Devresinin Doğal Cevabı
Aşağıdaki grafikleri sonuç veren denklemler ve nasıl elde edildiklerini gösteren videolar DBS'de.

<img src="şekiller/RL devresi anahtarlama.jpg" alt="RL devresi anahtarlama" height="300"/>

*Şekil 8:* RL devresinde t=2s anında anahtarlama ile güç kaynağının etkisiz hale getirilmesi.

<img src="şekiller/RL devresi doğal cevabı.jpg" alt="RL devresi doğal cevabın oluştuğu devre" height="300"/>

*Şekil 9:* *Şekil 8*'de t=2s anından sonra devrenin almış olduğu hal. Devreden geçen akım grafiğine RL devresi doğal cevabı denir.

<img src="şekiller/RL_devresi_dogal_cevabı_grafik.png" alt="RL devresinin basamak cevabının değişik R ve L değerlerine göre çizdirilmiş hali" height="300"/>

*Şekil 10:* RL devresinin doğal cevabının i<sub>L</sub>(0) *Şekil 5*'de hangi değere oturduysa kaldığı yerden ve değişik R ve L değerlerine göre grafiği<sup>8</sup>.
## RLC Devrelerinin Analizi
Yukarıda incelediğimiz devrelerde rezistörün yanında sadece bir kapasitör veya endüktör vardı. Elde ettiğimiz devre denklemleri birinci dereceden adi diferansiyel denklemler olmuştu. Şimdi ise aynı devrede hem kapasitör hem endüktör bulunması durumuna göz atalım. *Şekil 11*'de görüldüğü gibi, içinde iki tane enerji depolayabilen eleman bulunduran bu tarz devrelere RLC devresi deniyor. Bu devrelerin basamak ve doğal cevaplarının matematiksel ifadeleri ikinci dereceden diferansiyel denklemlerle temsil ediliyor.
### Seri RLC Devresi
<img src="şekiller/seri RLC devresi basamak cevabı konfigürasyonu.png" alt="seri RLC devresi basamak cevabı konfigürasyonu" height="300"/>

*Şekil 11:* RLC devresinin seri bağlanmış hali.

Devrede KGY uygulanırsa

<img src="eşitlikler/RLC_KVL.JPG" alt="seri RLC devresi KVY" height="35"/>

eşitliğini elde ederiz. Bu eşitlik, yukarıda verilen kapasitör ve endüktör modelleri yerlerinde kullanılır ve devrede i(t)=i<sub>L</sub>(t)=i<sub>C</sub>(t) olduğu da göz önünde bulundurulursa

<img src="eşitlikler/RLC_KVL_manipulated.JPG" alt="seri RLC devresi KVY manipüle edilmiş hali" height="180"/>

halini alır. Dikkat edin, bu diferansiyel denklemin çözümünde iki adet başlangıç koşulu söz konusu: Kapasitörün t=0s anındaki voltaj değeri olan V<sub>C</sub>(0) ve endüktörün t=0s anındaki akım değeri olan i<sub>L</sub>(0). Burada devrenin zorlanmamış cevabına bakmak için denklemin sağ tarafındaki güç kaynağından kaynaklanan terimi sıfırlarsak ve de λ :=d/dt tanımını yaparsak,

<img src="eşitlikler/RLC_karakteristik_denklem.JPG" alt="seri RLC devresi karakteristik denklem" height="40"/>

karakteristik denklemini elde deriz. Bu ifadeye göre RLC devresinde kapasitör voltajı ve endüktör akımının davranışını belirleyen faktör Δ olarak bilinen 

Δ=b<sup>2</sup>-4ac

parametresi olur. Burada a=1, b=R/L ve c=1/LC yerlerine konarsa

<img src="eşitlikler/Delta.JPG" alt="seri RLC devresi karakteristik denklem" height="40"/>

elde edilir. Bu ifadedeki Δ>0, Δ=0 ve Δ<0 durumları için V<sub>C</sub>(t) ve i<sub>L</sub>(t) sinyalleri farklı davranışlar (i.e., aşırı sönümlü, kritik sönümlü, eksik sönümlü veya sönümsüz) ortaya koyar. Biz *Şekil 11*'deki devrede L ve C değerlerini sabit tutup değişen R değerleri için cevabı analiz etmek istiyoruz. Endüktör değerini L=1H, kapasitör değerini C=0.01F olarak sabitlersek, o zaman 

Δ=R<sup>2</sup>-400

olur ki bu durumda Δ>0 olması için R>20, Δ=0 olması için R=20 ve de Δ<0 olması için R<20 olması gerektiği açıktır.
### Analitik Çözüm yerine Nümerik Çözüme Bakalım
Yukarıda RC ve RL devrelerinin basamak ve doğal cevaplarını analiz ederken elde ettiğimiz grafiklerin matematiksel ifadelerini, birinci dereceden diferansiyel denklemleri Kalkülüs bilgilerimizi kullanarak çözerek elde etmiştik. Burada ise, kapalı form çözümü (closed form solution) için çözüm adayı ifadeler önerip başlangıç koşullarından faydalanarak önerilen çözümlerin katsayılarını hesaplayıp çözümün tam ifadesine ulaşabiliriz. Bununla beraber, kapasitör voltajı ve endüktör akımı grafiklerine daha kolay bir yoldan bakmak istersek, elimizdeki ikinci dereceden dinamik ifadeyi *Şekil 11*'de görüldüğü gibi nümerik olarak da koşturabiliriz.<sup>9</sup>

<img src="şekiller/RLC_devresi_benzetim.JPG" alt="RLC devresi simülasyonu" height="300"/>

*Şekil 12:* RLC devresinde kalkülüs kullanarak diferansiyel denklemleri çözüp V<sub>C</sub>(t) ve i<sub>L</sub>(t) fonksiyonlarını analitik olarak elde edip çizdirmek yerine benzetiminin (simülasyon) yapılarak nümerik olarak V<sub>C</sub>(t) ve i<sub>L</sub>(t) fonksiyonlarının elde edilmesi.

Yukarıda *Şekil 12*'de verilen benzetimi L=1H, C=0.01F ve R = {100, 50, 20, 15, 10, 5, 0}Ω değerleri için t=5s'ye kadar koşturduğumuzda aşağıda verilen *Şekil 13, 14, 15, 16, 17* ve *18*'i elde ettik. 

<img src="şekiller/RLC_grafik_R_100.png" alt="RLC devresinin simülasyonu R=100, L=1, C=0.01" height="200"/>

*Şekil 13:* R=100, L=1, C=0.01 değerleri için *Şekil 11*'de verilen seri RLC devresindeki kapasitör voltajı V<sub>C</sub>(t) ve endüktör akımı i<sub>L</sub>(t). R>20 için aşırı sönümlü cevabı elde ettik.

<img src="şekiller/RLC_grafik_R_50.png" alt="RLC devresinin simülasyonu R=50, L=1, C=0.01" height="200"/>

*Şekil 14:* R=50, L=1, C=0.01 değerleri için *Şekil 11*'de verilen seri RLC devresindeki kapasitör voltajı V<sub>C</sub>(t) ve endüktör akımı i<sub>L</sub>(t). R>20 için aşırı sönümlü cevabı elde ettik.

<img src="şekiller/RLC_grafik_R_20.png" alt="RLC devresinin simülasyonu R=20, L=1, C=0.01" height="200"/>

*Şekil 15:* R=20, L=1, C=0.01 değerleri için *Şekil 11*'de verilen seri RLC devresindeki kapasitör voltajı V<sub>C</sub>(t) ve endüktör akımı i<sub>L</sub>(t). R=20 için kritik sönümlü cevabı elde ettik.

<img src="şekiller/RLC_grafik_R_15.png" alt="RLC devresinin simülasyonu R=15, L=1, C=0.01" height="200"/>

*Şekil 16:* R=15, L=1, C=0.01 değerleri için *Şekil 11*'de verilen seri RLC devresindeki kapasitör voltajı V<sub>C</sub>(t) ve endüktör akımı i<sub>L</sub>(t). R=15 için eksik sönümlü cevabı elde ettik.

<img src="şekiller/RLC_grafik_R_10.png" alt="RLC devresinin simülasyonu R=10, L=1, C=0.01" height="200"/>

*Şekil 17:* R=10, L=1, C=0.01 değerleri için *Şekil 11*'de verilen seri RLC devresindeki kapasitör voltajı V<sub>C</sub>(t) ve endüktör akımı i<sub>L</sub>(t). R=10 için eksik sönümlü cevabı elde ettik.

<img src="şekiller/RLC_grafik_R_5.png" alt="RLC devresinin simülasyonu R=5, L=1, C=0.01" height="200"/>

*Şekil 18:* R=5, L=1, C=0.01 değerleri için *Şekil 11*'de verilen seri RLC devresindeki kapasitör voltajı V<sub>C</sub>(t) ve endüktör akımı i<sub>L</sub>(t). R=5 için eksik sönümlü cevabı elde ettik.

<img src="şekiller/RLC_grafik_R_0.png" alt="RLC devresinin simülasyonu R=0, L=1, C=0.01" height="200"/>

*Şekil 19:* R=0, L=1, C=0.01 değerleri için *Şekil 11*'de verilen seri RLC devresindeki kapasitör voltajı V<sub>C</sub>(t) ve endüktör akımı i<sub>L</sub>(t). R=0 için sönümsüz cevabı elde ettik.
## Dipnotlar
<sup>1</sup> İng. Dummy variable.</br>
<sup>2</sup> İng. Step response. Basamak cevabı [1]'de geçen bir kavramdır. Aynı kaynağı referans kullanan [2], bu cevabı zorlanmış cevap diye isimlendirerek yaklaşımı daha genelleştirmiştir (i.e., güç kaynağından devreye etki eden sinyalin sadece sabit bir DC gerilim olma şartı yok). Biz burada [1]'de geçen haliyle kullanmayı uygun gördük.</br> 
<sup>3</sup> İng. Kirchoff's Voltage Law (KVL).</br>
<sup>4</sup> Bu grafik **MATLAB**'da çizdirilmiştir. Siz de **MATLAB**'da çizdirmek için *kodlar* dizinindeki *RC_devresi_zorlanmis_cevap.m* programını koşturun.</br>
<sup>5</sup> İng. Natural response.</br>
<sup>6</sup> Bu grafik  **MATLAB** ile çizdirilmiştir. Siz de **MATLAB** ile çizdirmek için *kodlar* dizinindeki *RC_devresi_dogal_cevap.m* programını koşturun.</br>
<sup>7</sup> Bu grafik **MATLAB**'da çizdirilmiştir. Siz de **MATLAB**'da çizdirmek için *kodlar* dizinindeki *RL_devresi_zorlanmis_cevap.m* programını koşturun.</br>
<sup>8</sup> Bu grafik  **MATLAB** ile çizdirilmiştir. Siz de **MATLAB** ile çizdirmek için *kodlar* dizinindeki *RL_devresi_dogal_cevap.m* programını koşturun.</br>
<sup>9</sup> Bu benzetimi *kodlar* dizininde *RLC_devresi.mdl* dosyasında görebilirsiniz. Benzetimi koşturmak için *init_RLC_devresi.m* programını koşturun.</br>
<sup>10</sup> Bu grafik  **MATLAB** ile çizdirilmiştir. Siz de **MATLAB** ile çizdirmek için *kodlar* dizinindeki *init_RLC_devresi.m* programını koşturun.
## Referanslar
[1] J. W. Nilsson, S. A. Riedel, *Electric Circuits*, 10. Baskı, Prentice Hall, Upper Saddle River, New Jersey, 2014.</br>
[2] M. Ö. Efe, *Devre Analizi-I*, 3. Baskı, Seçkin Yayıncılık, 2016.
