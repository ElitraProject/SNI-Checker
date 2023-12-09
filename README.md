# SNI-Checker

 - Сканер предварительно указанного списка доменов, который выводит результат с TLS пингом до каждого из доменов.

# Установка

Запустите команду
```bash 
wget -N https://raw.githubusercontent.com/ElitraProject/SNI-Checker/main/run.sh && bash run.sh
```

## Использование

1. Получите список доменов, перейдя на [bgp.tools](bgp.tools)

Пример:
  

				
| A | DNS |
|--|--|
|  88.210.13.4| v1538375.hosted |
| 88.210.13.24	  | sdynest.xyz, vpn.sdynest.xyz |
|  88.210.13.30	 |   concertgebow.duckdns.org|
|  88.210.13.41	 | keitaroio.online, bid.fan, www.bid.fan |
|  88.210.13.44	 | cdn233.143sma.cfd |
| 88.210.13.51	  | ams-vpn.andtree.ru |

2. Создайте свой список и вставьте туда скопированные домены вместе с IP адресами (скрипт уберет их сам):
```bash
cd SNI-Checker
```
```bash
nano list.txt
```
3. Запустите скрипт и вводите необходимые данные (путь до файла со списком, сколько доменов нужно проверить и сколько подошедших по критерию доменов выводить)
```bash 
python3 main.py
```
4. Скрипт выведет список подошедших доменов (TLSv1.3) вместе с TLS пингом. 
Пример результат:
```bash
+-------------------------+-----------+------------+
|          Домен          | Пинг (мс) | версия TLS |
+-------------------------+-----------+------------+
|       chosting.su       |     0     |    None    |
|    chosting.solutions   |     0     |    None    |
|   www.thermo-house.pro  |     0     |    None    |
|       4family.fun       |     0     |    None    |
|       r.mindrec.ru      |     0     |  TLSv1.3   |
|          cvp.su         |     0     |  TLSv1.3   |
|   crow.katsuki.digital  |     0     |    None    |
| vremanoda.mifixcloud.ru |     0     |    None    |
|   saturn.mifixcloud.ru  |     2     |    None    |
|       www.ctdaw.ru      |     2     |  TLSv1.3   |
|         ctdaw.ru        |     1     |  TLSv1.3   |
|        buyelmi.ru       |     2     |  TLSv1.3   |
|      www.buyelmi.ru     |     0     |    None    |
|     neurochat-gpt.ru    |     0     |    None    |
|     vpnallpha.space     |     38    |    None    |
|     adakat.unvpn.ru     |     0     |    None    |
|  www.sexmeetings24.ltd  |     4     |    None    |
|    www.sexloversy.com   |     0     |    None    |
|     www.sexyacce.com    |     0     |    None    |
|     cloud.sabalt.ru     |     0     |    None    |
|       matradio.ru       |     0     |  TLSv1.3   |
|     www.zzzsjxc.com     |     4     |    None    |
|       zzzsjxc.com       |     1     |    None    |
|    lv.sisovpn.online    |     3     |    None    |
| mail.criticizetrump.com |     0     |    None    |
|    criticizetrump.com   |     0     |    None    |
+-------------------------+-----------+------------+

Подходящие домены (TLSv1.3):
+--------------+-----------+------------+
|    Домен     | Пинг (мс) | версия TLS |
+--------------+-----------+------------+
| r.mindrec.ru |     0     |  TLSv1.3   |
|    cvp.su    |     0     |  TLSv1.3   |
| www.ctdaw.ru |     2     |  TLSv1.3   |
|   ctdaw.ru   |     1     |  TLSv1.3   |
|  buyelmi.ru  |     2     |  TLSv1.3   |
| matradio.ru  |     0     |  TLSv1.3   |
+--------------+-----------+------------+
Найденные подходящие домены: 
['matradio.ru', 'ctdaw.ru', 'r.mindrec.ru', 'cvp.su', 'www.ctdaw.ru', 'buyelmi.ru']
```
