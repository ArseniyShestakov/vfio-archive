#!/bin/bash
# Only left it there to tell some guys that both Chrome and Firefox developer tools allow to generate cURL commands like this one.
# Just right click on page -> Inspect element -> Network tab -> Reload actual page -> right click on page -> Copy as cURL

# BTW Cookie corrupter, don't even try :-p
for i in {1..234}
do
   content=`curl 'https://bbs.archlinux.org/viewtopic.php?id=162768&p='$i -H 'Accept-Encoding: gzip, deflate, sdch' -H 'Accept-Language: en-US,en;q=0.8,ru;q=0.6,es-419;q=0.4,es;q=0.2' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Referer: https://bbs.archlinux.org/viewtopic.php?id=162768' -H 'Cookie: bbs=80749%7C1bf9a49b5136c81a54fd0f3a78b71434bd8a4438%7C1441071345%7C4341a9cd343a335e39d4d88b2c5d61430734d0d1; bbs_track=t162768%3D1439861745%3Bt143078%3D1439860617%3B' -H 'Connection: keep-alive' --compressed`
   echo $content > "topic_"$i".html"
done

