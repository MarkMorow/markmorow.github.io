---
layout: post
title: Why I'm Learning Objective-C & Other Learning Resources
date: 2023-04-23 10:19:00-0400
description: Don't you know about Swift?
tags: notes code learning
giscus_comments: true
related_posts: false
---
'Why are you learning Objective-C? Everything is moving to Swift." This is usually the first thing someone will helpfully point out to me. They are not wrong either. If you were getting started in the iOS/iPadOS ecosystem, you would probably want to use Swift.

When I look at Swift code somewhere, I have a rough idea of what it's trying to do. However, when I look at the Objective-C code, it looks like the cat walked across the keyboard when I was getting coffee.

I'm looking to learn it for a few reasons.

1. Though Swift is the new and the right direction. There is still ALOT of stuff written in Objective-C, especially malware. To understand what it's doing, you need to know Objective-C.

2. Trying to learn some of the deeper parts of the system requires you to use a lower-level language like C, C++, or Objective-C. I am writing small sample apps. Reversing them to see what it looks like in various tools like Ghidra, IDA Pro (which I do not have), or Hopper (which I also do not have but isn't too expensive). Making those mistakes that other vulnerable apps make in my sample apps will help me learn. At least, I think it will.

I can also learn Swift later, it's not like it's going away, and you can only pick one. So I will just learn more about it later.

I have a terrible habit of buying books I do not have the time to read, but I do it anyways. This extends to digital, audio, and physical books. This habit includes technical books as well. I plan to use the following books for my deeper understanding of things.

[Objective-C Programming from Big Nerd Ranch](https://www.informit.com/store/objective-c-programming-the-big-nerd-ranch-guide-9780321942067)

This is ten years old at this point, so some of the examples in XCode have been moved or removed, but the fundamentals are still there. You can probably find it used as well cause who would want to learn this today with all that sweet Swift stuff out there. They have a little challenge to do at the end of each chapter. I've been doing those as I go and posting my solutions on my [GitHub Repo](https://github.com/MarkMorow/BigNerdRanchObjectiveC). I'm halfway through the book, and it's been really helpful.

[The Mac Hackers Handbook](https://www.wiley.com/en-us/The+Mac+Hacker%27s+Handbook-p-9781118080337)

Another old one but many of the fundamentals remain true. For example, understanding universal binaries, tracing, and fuzzing will still work today. It might be a different toolset now, but the basics are here. I've learned that having a good grasp on those fundamental/basic things makes learning the newer things much easier since they are all built from them.

[ARM Assembly Internals & Reverse Engineering](https://www.wiley.com/en-us/Blue+Fox%3A+Arm+Assembly+Internals+and+Reverse+Engineering-p-9781119746720)

This book just arrived this past week, and I'm very excited to dig into this one. I've been waiting for Maria Markstedter ([Twitter](https://twitter.com/Fox0x01), [Mastodon](https://mastodon.social/@Azeria)) since she announced it. The last chapter applies the techniques in the book to MacOS malware on ARM. It looks great.

I have a bunch more books sitting on my shelf to dig into, but those will be for another post.

What are some of the technical books you are either working through or most excited to start on? Please post them in the comments. I'm still not sure I set that up correctly.
