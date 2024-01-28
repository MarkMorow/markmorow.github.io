---
layout: post
title: The Mac Hacker's Handbook
date: 2024-01-27 12:19:00-0400
description: Isn't that book really old?
tags: research learning
giscus_comments: true
related_posts: false
---
In 2011, Wiley released [The Mac Hacker's Handbook](https://www.wiley.com/en-us/The+Mac+Hacker%27s+Handbook-p-9781118080337) by Charlie Millerwon and Dino Dai Zovi. The book focuses on the basics of Mac OS X (note this is before it was called OS X and now just macOS), the attack surface of the operating system, looking for bugs and vulnerabilities, as well as many of the tools and techniques you would use to exploit it. This is similar in style to the many other The 'insert name' hacker's handbook, with 'Web Application' being the one I see recommended the most. This book leverages Mac OS X 10.5, also known as Leopard, as the host operating system to walk through teaching you these different attacks and tools.

You might wonder, Mac OS X 10.5, do those attacks still work? They do not. We are talking about an operating system that was released in 2007. The first Apple computer I bought was an iBook G4 that came with Mac OS X 10.4 Tiger, and I remember upgrading it to Leopard and eventually Snow Leopard. Yes, it is old. So why do this? First, you'd be surprised at how many of the tools you'll still use today that are covered in this book. Second, these techniques are fundamental and much easier to do on this older operating system. This is a great way to learn and apply it to much more modern and better-protected operating systems. You have to crawl before you can run.

This brings us to the next challenge: how do you run Mac OS X 10.5 in 2024. I do not have my iBook G4 anymore. My first step was to try to run this as a virtual machine on VMWare Fusion. I ran into two challenges. First, in order to install, you need to take the DMG file and convert it to an ISO. The good news is that the built-in Disk Utility tool can convert a DMG to an ISO. The second issue was that VMWare Fusion would only run MacOS X Server licenses as per its license agreement. I did not have a copy of Mac OS X Leopard Server, and I suspect many of the examples in the book would work, but I wasn't sure.

I then tried installing Mac OS X 10.5 in Virtual Box, and I got a bit further along as it actually started. I was met with a kernel panic: "com.apple.driver.AppleIntelCPUPowerManagement". Doing a bit of searching led me to a similar post [here](https://forums.virtualbox.org/viewtopic.php?t=109476). The fix is to set the virtual CPU with this command, /Applications/VirtualBox.app/Contents/MacOS/VBoxManage modifyvm Leopard --cpu-profile 'Intel Core2 T7600 2.33GHz'. Leopard is the name of my VM.

After that, it booted and installed as expected! I now have my test environment set up and ready to go!

![Leopard](/assets/img/Leopard_Running_VirtualBox.png)
*Mac OS X 10.5 Leopard running in a VM in Virtual Box on Macbook Pro host*
