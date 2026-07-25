---
layout: post
title: GitHub Advanced Security Certification
date: 2025-01-13 05:00::00
description: At Least It's Security Related
tags: notes learning security
giscus_comments: true
related_posts: false
---

Continuing through the different [GitHub Certifications](https://resources.github.com/learn/certifications/), I next attempted the Advanced Security exam. This [learning path](https://learn.microsoft.com/en-us/collections/rqymc6yw8q5rey) was great and explained a few things I had been seeing in my own repo. One day, I started to receive Dependabot alerts about the Application Consent Phishing Sample repo I had as part of my SANS white paper. Since this was just a test demo application, I wasn't too worried about the alerts. However, after going through the course, I started to feel bad that I hadn't updated this or added some additional security settings like secret scanning or code scanning.

I enabled the additional security protections on this repo and fixed the outdated libraries, which cleared the Dependabot alerts. I took the exam and passed. After fixing my own repos, the learning path content made a lot more sense. I would recommend folks do the same for their GitHub environments even if they aren't going to take the exam. It was worth it. You can see the before and after pictures of my repo.

![Before](/assets/img/repo_before_dependabot.png)
_Alerts_

![After](/assets/img/repo_after_dependabot.png)
_No More Alerts_