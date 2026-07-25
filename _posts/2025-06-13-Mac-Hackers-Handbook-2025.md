---
layout: post
title: The Mac Hacker's Handbook in 2025
date: 2025-06-13 05:00:00
description: You actually read that?
tags: notes learning apple
giscus_comments: true
related_posts: false
---

A while back, I discussed the [Mac Hacker's Handbook and how to set up Mac OS X 10.5](https://markmorow.com/blog/2024/2024-The-Mac-Hackers-Handbook/), also known as Leopard, to run in a virtual machine, allowing me to follow along in the labs. I finished reading through this 14-year-old book in April. The book still holds up, but my virtual machine did not. But first, the book.

One learning concept that has worked well for me over the years is to truly understand the fundamentals. Most everything is built on top of those. I thought this book did a good job of explaining core OS architecture concepts, such as the kernel and the Mach-O file format. Along the way, it covered some of the built-in tools for validating settings, behavior, and so on. These still work today! The second half of the book delves into specific exploit tactics, such as stack and heap overflows. Modern OS development has rendered these examples obsolete, which is a good thing.

Initially, I attempted to follow along in the virtual machine with mixed results. Many times, the machine would just freeze, and a hard restart would bring it back. The examples in the book also required an ancient version of Xcode 3.1.4. For reference, the current nonbeta build at the time of this writing is version 16.4. You can actually download older versions, such as 3.1.4, from the Apple Developer site if you have a developer account or are a member of AppleSeed. To save you some time, the best way I found to get the DMG to the VM was to set up an AFP share on 10.5 and then connect from my more modern OS via AFP. If you plan to take this path, ensure you are using a version of macOS that still supports AFP. Apple has announced that AFP is [going away](https://support.apple.com/en-us/121011) in a future release.

Eventually, I gave up trying to follow along in the VM, as I was spending more time troubleshooting it than actually learning the concepts, so I stopped and read through the book. If you can get your hands on a copy of the book, I would recommend giving the first half a read through, and don't worry so much about trying to get an old VM working.
