---
id: 320
title: 'PHP Challenge #1 Results'
date: 2003-02-24T16:06:08+00:00
author: Gary Fleming
excerpt: The results of the first PHP challenge
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20030224160608
permalink: /Archives/2003/02/24/PHPChallenge1Results/
---
Thanks to everyone who submitted scripts for this little challenge. The scripts have been tested and there is a clear winner. But let&#8217;s start at 3rd place, which goes to Bane with a 94 byte entry:  
`function GCD($A,$B){<br />for($i=1,$MAX=1;$i<=$A;$i++){<br />if(!($A%$i)&&!($B%$i)){<br />$MAX=$i;<br />}<br />}<br />return$MAX;<br />}<br />`This entry used a similar method to most other entries to work out the GCD, but was quite a bit smaller than most entries.

Unfortunately, it was **1 byte** larger than Jante&#8217;s 93 byte entry:  
`function GCD($num1,$num2){<br />while($num2!=0){<br />$t=$num1%$num2;$num1=$num2;$num2=$t;<br />}<br />return $num1;}<br />`Now this entry could have been made much smaller by replacing <var>$num1</var> with <var>$n</var> and <var>$num2</var> with <var>$m</var> (or any other 1 letter variable name), but not much can be done about that now.

The clear leader, however, was ZeroByte&#8217;s 58 byte entry:  
`function gcd($n,$m){<br />if(!$m)return$n;return gcd($m,$n%$m);<br />}<br />`That is some fantastic use of recursion to get the size right down. Congratulations, ZeroByte!

It should be noted that the winning entry will be archived soo. Also, the code sizes shown were for all formatting and comments removed.