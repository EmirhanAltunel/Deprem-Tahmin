#Kutuphaneleri eklendi.
import pandas as pd
from matplotlib import pyplot
from fbprophet import Prophet
from datetime import date
import datetime


#Excel'den veri cekildi.
veri=pd.read_csv("elazig_deprem_v3.csv",encoding="unicode_escape")
#Sadece zaman ve buyukluk kalacak sekilde veri duzenlendi.
veri=veri.drop(["Enlem","Boylam","Derinlik","Tip","Yer"],axis=1)


#Prophet kutuphanesinin kullanilmasi icin gerekli duzenlemeler yapildi.
veri.columns=["ds","y"]
veri["ds"]=pd.to_datetime(veri["ds"])
veri.dtypes

#Model olusturuldu.
model=Prophet()
model.fit(veri)

#Once kendi veri seti icinde model denendi ve dogruluga bakildi.
gelecek=list()
i=0
while i<11:
    gelecek.append(veri.iat[i,0])
    i+=1
gelecek=pd.DataFrame(gelecek)
gelecek.columns=["ds"]
gelecek["ds"]=pd.to_datetime(gelecek["ds"])
tahmin=model.predict(gelecek)

print(tahmin[["ds","yhat","yhat_lower","yhat_upper"]])
model.plot(tahmin)
pyplot.title("Tahmin")
pyplot.show()


#Model ile tahmin yapildi.
suan_yil=a = datetime.datetime.now().year
tekrarSayisi=10
baslangic_Yil=suan_yil+tekrarSayisi
gelecek_v2=list()
baslangic_Tarih = date(baslangic_Yil, 1, 1)
i=0
while i<11:
    son_Tarih = baslangic_Tarih.replace(baslangic_Tarih.year + 1)
    gelecek_v2.append(son_Tarih)
    baslangic_Tarih=son_Tarih
    i+=1

gelecek_v2=pd.DataFrame(gelecek_v2)
gelecek_v2.columns=["ds"]
gelecek_v2["ds"]=pd.to_datetime(gelecek_v2["ds"])
tahmin_v2=model.predict(gelecek_v2)

#Olusan tahmin'de duzenlemeler yapilarak. Csv'ye eklendi.
tahmin_v2["yhat"]=round(tahmin_v2["yhat"],2)
tahmin_v2=tahmin_v2[tahmin_v2["yhat"]<=7.90]
print(tahmin_v2[["ds","yhat"]])
model.plot(tahmin_v2)
pyplot.title("Tahmin")
pyplot.show()
tahmin_v2 = tahmin_v2.rename(columns={'ds': 'Tahmini Tarih', 'yhat': 'Tahmini Buyukluk'})
tahmin_v2[["Tahmini Tarih","Tahmini Buyukluk"]].to_csv("/assets/elazig_muhtemel_deprem.csv",index=False)

