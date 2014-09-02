#!/bin/bash

yesterday=`date  -v -1d '+%Y.%m.%d'`
picturesFolder="$HOME/Pictures/Today/"
todayPict=${picturesFolder}today.png

 cp $todayPict ${picturesFolder}${yesterday}.png
 curl http://yandex.ru/images/today?size=1920x1200 > $todayPict
 killall -9 Dock

