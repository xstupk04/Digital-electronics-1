## Projekt-Countdown Rotačná enkodér s KY040 a 7 segmentovým displejem 
Úkolem tohoto proejktu byla navrhnout a naprogramovat v jazyce VHDL Countdown, kdy od nastavené hodnoty odečítáme pomocí rotačního enkodéru a hodnotu odečítané proměnné si zobrazujeme na 7 segmentovém displeji. 

### Princip rotačního enkodéru 

<p align="center">
<img width="400" alt="portfolio_view" src="https://github.com/xstupk04/Digital-electronics-1/blob/master/Labs/Project%20/Image/Rotary-Encoder-Module-Brick-Sensor-Development-for-Ky-040.jpg">
  </p>

KY040 má celkem 5 výstupů. CLK a data jsou obdelníkové signály, sloužící k určení polohy enkodéru (vzájemně jsou posunuty o 90°), GND a +5V slouží k napájení a SW slouží k připojení pushbuttonu. 

<p align="center">
  <img width="200" alt="portfolio_view" src="https://github.com/xstupk04/Digital-electronics-1/blob/master/Labs/Project%20/Image/Rotary_Encoder_Pinout_and_PCB%20Dimensions.png">
 </p>

Jak jsem již zmínil enkodér obsahuje dva obdelníkové signály pomocí kterých určujeme počet impulzů a směr otáčení. Z fázového posunu jsme schopni určit jakým směrem se enkodérem otáčí viz. průběh na obrázku. (První průběh CLK předbíhá Data o 90°, druhý průběh naopak) 

<p align="center">
<img width="400" alt="portfolio_view" src="https://github.com/xstupk04/Digital-electronics-1/blob/master/Labs/Project%20/Image/Sn%C3%ADmek%20obrazovky%202020-04-30%20v%C2%A09.39.39.png">
     </p>

### 7 segmentový displej 
Způsob implementace displeje je stejný jako v PC cvičení. Při zapisování čísel na displej používám dekodér který 4 bitové číslo zobrazí na jednotlivých segmentech 
<p align="center">
<img width="200" alt="portfolio_view" src="https://github.com/xstupk04/Digital-electronics-1/blob/master/Labs/Project%20/Image/led-7-mi-segmentovy-displej-9.9mm-rudy-cerveny-12m-0.jpg.big.jpg">
   </p>
<p align="center">
<img width="200" alt="portfolio_view" src="https://github.com/xstupk04/Digital-electronics-1/blob/master/Labs/Project%20/Image/7-segment-display-pinout.gif ">
 </p>

### Závěr
Projekt jsem nedokončil kompletně. Vše mi trvalo o trochu déle jelikož jsme neměl kolegu a na projekt jsem byl sám. Pokusil jsem se o dvě řešení, první byl pouze zkušební (nefunkční). Ačkoliv jsem se u druhého zadání došel alespoň k naprogramování enkondéru, i přesto jsem projekt nedokončil kompletně.

### Zdroje 

https://www.youtube.com/watch?v=v4BbSzJ-hz4

https://howtomechatronics.com/tutorials/arduino/rotary-encoder-works-use-arduino/

https://moodle.vutbr.cz/pluginfile.php/183804/mod_resource/content/1/vhdl_kubicek.pdf
