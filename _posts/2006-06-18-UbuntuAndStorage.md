---
id: 593
title: Ubuntu And Storage
date: 2006-06-18T17:35:46+00:00
author: Gary Fleming
excerpt: Wherein I have problems with data storage and multiple operating systems.
layout: post
guid: tag:solitude.vkps.co.uk,2003:1,20060618173546
permalink: /Archives/2006/06/18/UbuntuAndStorage/
---
Linux and filesystem experts, I need your help. A while back, I started looking at installing [Ubuntu](http://www.ubuntu.com/) after discussing various options with [Stuart Langridge](http://kryogenix.org). I&#8217;ve subsequently burned 3 different releases of said OS to <acronym title="Digital Video Disc">DVD</acronym>, up to and including the latest 6.06 LTS x64 version. Playing with the live <acronym title="Compact Disk">CD</acronym> on a few occassions has convinced me that it is the right idea: it&#8217;s a tidy little Linux distro that gets out of your way until you want to really start messing around with it. I have not, however, installed it yet for two reasons. Primarily, it has taken me a fair amount of time to investigate everything I needed to know about Ubuntu before being happy with it, making sure I&#8217;ve thought through any potential problems. I&#8217;m glad I did that because I&#8217;ve hit a real problem, which brings me to my second reason.

My computer is an AMD64x2 based machine with two 200Gb SATA drives, both of which were formatted as NTFS volumes. The first of those is the boot drive, which contains installed programs and games and has almost 125Gb free. The secondary drive is my data drive, containing video, music, pictures, websites and a whole load of other application data I **don&#8217;t want to lose**. It is full, give or take a few gigs.

The problem is the data drive. I want a volume that I can read and write from either windows or linux (Mac support would be nice, but not essential) but, as the drive is NTFS, the linux support is poor for writing and this is data I **don&#8217;t want to lose**. I&#8217;ve been giving it some thought and have a few ideas:

  1. **Long, bitty migration**. I could offload a good chunk of the data drive to the non-data drive, create a new partition on the data drive (in the new freespace) with a better filesystem (whiche one), migrate the data back to that partition, and repeat with the other section. This strikes me as potentially messy.
  2. **The [Linux-NTFS](http://www.linux-ntfs.org/) project**. Although they now have NTFS support, it&#8217;s at the expense of &#8220;speed and stability&#8221;. I don&#8217;t know if that&#8217;s a worthwhile trade-off.
  3. **Checking out NTFS for linux**. I&#8217;d be willing to pay for the software if it safely met my needs, but I am not sure it will.

Of course, those options all miss a key point: the data drive is absolutely full. I will need more space at some point though the largely free non-data drive can be used for now, so this might be a perfect opportunity. I think (though I am not sure) my motherboard, an Asus A8N32-SLI Deluxe, only has two SATA slots and that makes just shoving in another disk tricky. So I&#8217;m also looking towards <acronym title="Network Attached Storage">NAS</acronym> solutions:

  1. **Buying a NAS box from [Infrant](http://www.infrant.com/)**. It&#8217;s quite a cost up front to get even a diskless NAS box, but it&#8217;s the sort of investment that might be worth it. While I&#8217;m wary that nothing will be compatible forever, an ethernet-accessed blackbox with upgradeable firmware seems like a safe bet for at least the medium term. Cost might be an issue, but I&#8217;m also not sure about all the access issues. Presumably it uses some standard access protocol (Samba-based most likely), but it&#8217;s been a while since I have looked at the issues around network storage.
  2. **Build my own NAS box based on [FreeNAS](http://www.freenas.org/)**. This would be a fun little project, but I&#8217;m not sure it would be any cheaper than buying a more sophisticated box given a) the cost of components, b) time taken, c) reliability, d) feature set, and e) lifespan.

So, gentle readers, have I missed an obvious or better option? Do these options look good? Which is best? Are they problems I have overlooked? All comments and suggestions welcome.