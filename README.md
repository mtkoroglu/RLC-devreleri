# RLC Devreleri
Bu sayfada kapasitör ve endüktör devre elemanlarını anlamaya çalışıp RC, RL ve RLC devrelerinin basamak (zorlanmış) ve doğal cevaplarına bakacağız.
## RC devresi
Kapasitörün matematiksel modeli 

<img src="eşitlikler/kapasitör denklemi.JPG" alt="kapasitör denklemi." height="40"/>

olarak verilmişti. Bu birinci dereceden adi diferansiyel denklemde eşitliğin her iki tarafının k=t<sub>0</sub> anından k=t anına kadar integralini alırsak aşağıdaki çözümü elde ederiz.

<img src="eşitlikler/kapasitör denklemi çözümü.JPG" alt="kapasitör denklemi çözümü." height="70"/>

Buradaki k denilen kukla değişkene<sup>1</sup> derslerimizde τ demiştik. Aşağıda zaman sabiti (time constant) kavramı karşımıza çıktığında zaman sabitine τ diyeceğimizden, bundan sonra karışıklık olmasın diye integral alırken zamanı temsil eden yatay ekseni k notasyonu ile göstereceğiz.

Şimdi, *Şekil 1*'de gördüğümüz üzere bir güç kaynağı, bir rezistör ve bir kapasitörden oluşan RC devresinin basamak cevabını<sup>2</sup> analiz edelim.

<img src="şekiller/RC devresi basamak cevabı.jpg" alt="RC devresi." height="300"/>

*Şekil 1:* RC devresi.

#### Exclusive OR (XOR) Problem
<img src="figure/xor_problem_smaller.jpg" alt="MLP network is going to learn XOR problem." height="180"/>

*Fig. 2:* MLP network is going to learn XOR problem.

<img src="figure/xor_MLP.jpg" alt="For the XOR problem, we use a MLP with one hidden layer consisting of sixteen neurons." height="360"/>

*Fig. 3:* For the XOR problem, we use a MLP with one hidden layer consisting of sixteen neurons.

<img src="figure/ANN_MLP_flow_chart.jpg" alt="Error back-propogation algorithm is used to update the network parameters." height="240"/>

*Fig. 4:* Error back-propogation algorithm is used to update the network parameters.

### B. Convolutional Neural Network (CNN)
In weeks X-Y-Z, we will look at a classification example on images. Cats-dogs image repository on Kaggle. We will follow the tutorial given in [2]. Please see Figures 5 and 6 for classification of cat and dog images via CNN. 

<img src="figure/cats_dogs_cnn.png" alt="Cats and dogs classification via CNN." height="240"/>

*Fig. 5: Classification of cat & dog images via CNN.*

<img src="figure/cats_dogs_classification.gif" alt="Cats and dogs classification with deep learning." height="240"/>

*Fig. 6: Cats and dogs classification with deep learning.*

## Dipnotlar
<sup>1</sup> İng. Dummy variable.
<sup>2</sup> İng. Step response. Basamak cevabı [1]'de geçen bir kavramdır. Aynı kaynağı referans kullanan [2], bu cevabı zorlanmış cevap diye isimlendirerek yaklaşımı daha genelleştirmiştir (i.e., güç kaynağından devreye etki eden sinyalin sadece sabit bir DC gerilim olma şartı yok). Biz burada [1]'de geçen haliyle kullanmayı uygun gördük. 

## Referanslar
[1] J. W. Nilsson, S. A. Riedel, Electric Circuits, 10. Baskı, Prentice Hall, Upper Saddle River, New Jersey, 2014.</br>
[2] M. Ö. Efe, Devre Analizi-I, 3. Baskı, Seçkin Yayıncılık, Ankara, 2016.
