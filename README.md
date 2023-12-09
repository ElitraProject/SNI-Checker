# SNI-Checker

 - Сканер предварительно указанного списка доменов, который выводит результат с TLS пингом до каждого из доменов.

# Установка

Запустите команду
```bash 
wget -N https://raw.githubusercontent.com/ElitraProject/SNI-Checker/main/run.sh && bash run.sh
```

## Использование

1. Получите список доменов, перейдя на [bgp.tools](https://bgp.tools)

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
