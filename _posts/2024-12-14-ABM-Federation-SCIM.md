---
layout: post
title: Apple Business Manager Federation and SCIM with Entra ID
date: 2024-12-14 05:00:00
description: Improving our ABM Lab!
tags: notes learning apple
giscus_comments: true
related_posts: false
---


Continuing from my previous [post](https://markmorow.com/blog/2024/Setting-Up-ABM/) about setting up AxM in a lab, I thought I would set up Federation and SCIM. To be **very clear**, at the top of this post. Everything I did was in my test environment, and I was completely okay with things breaking or going generally sideways and starting all over.

**You should consult an expert in AxM for your area if you need assistance with this setup, and I'm not responsible if you cowboy your way through this and don't like what happens to your environment.**

The lab is primarily for my learning and reference in the future. **You've been warned!**

I first needed to set up a federation for the IDP; in this case, we will be using Entra ID. This is the IDP I'm the most familiar with. I followed the process outline in this [Apple Doc](https://support.apple.com/guide/apple-business-manager/federated-authentication-microsoft-entra-axm8c1cac980/1/web/1). The doc states that you must sign in with a Global Admin role. Because this is my test environment and I'm the only one in here, this isn't a problem. Looking at the permissions listed.

![Consent](/assets/img/ABM_Fed_SCIM_1.png)

I suspect you can probably get away with a lower-privilege role such as [Cloud Application Administrator](https://learn.microsoft.com/en-us/entra/identity/enterprise-apps/grant-admin-consent?pivots=portal#prerequisites). Maybe in the future, I will back this all out and try it with one of these roles.

I ran into an error because the admin account I had listed was missing the first and last name on the user object.

![Error](/assets/img/ABM_Fed_SCIM_2.png)

Once I updated those attributes, I could consent to the application with that account.

![Sucess](/assets/img/ABM_Fed_SCIM_3.png)

I also saw the expected application in enterprise apps in the Entra ID tenant

![Enterprise App](/assets/img/ABM_Fed_SCIM_4.png)

Now, this is where the steps in the Apple article were a bit different from my setup. For Step 2, I could not find anywhere to test the federation. Since I only really had a few admin accounts in ABM and a few in Entra ID, I was fine with just skipping this and going forward to enabling it. I clicked Set Up, and everything looked completed.

![Federation](/assets/img/ABM_Fed_SCIM_5.png)

Back on the Entra ID side, I created two of my test users, added them to a group, and assigned them to the application. These were the users I wanted to sync to my ABM instance.

Following the ABM SCIM guide for [Entra ID](https://support.apple.com/guide/apple-business-manager/sync-user-accounts-from-microsoft-entra-id-axm3ec7b95ad/web), I clicked on Entra Connect Sync Now. Within a few minutes, I got a new activity alert stating that two accounts were unable to be synced. These were existing accounts in ABM with the domain name I just federated, and they had the error "Account_Update_Not_Allowed."

![ErrorSCIM](/assets/img/ABM_Fed_SCIM_6.png)

I was very confused. I thought the only two accounts I had added to the application would be the ones in scope of the sync. That doesn't appear to be the case, as they were NOT in the logs and didn't show up in the Users sidebar. I also had three accounts in ABM. The one that was NOT showing up with an error was the one with the domain suffix mydomain.appleid.com. These were admin accounts, so that makes sense as to why they couldn't be updated.

By clicking on the conflicting user accounts, I changed their suffix to match mydomain.appleid.com and re-ran the sync. Those two conflict users were no longer in conflict and were created in ABM. However, my other two test users still hadn't appeared. When I retraced the requirements, I saw I missed setting the required attributes of givenName and surname. Once I added those values to my two test users, they came over as expected.

I still couldn't understand why those two admin accounts were syncing, as they were NOT added to the group. I created a third test user with all the correct information but did NOT assign them to the group for the ABM app. A short time later, while I started working on this post, they appeared in ABM. 

![Users](/assets/img/ABM_Fed_SCIM_7.png)

This may or may not be the behavior you want. Especially if you have a very large org and only a small percentage have Apple devices. It seems to just match the domain name, as I couldn't see a way to filter.

All synced accounts have the staff role but can be changed to any of the other roles. I suspect you would want to follow a similar pattern where you have a cloud-only domain break glass type of administrative account in AxM. That way, if you ever had your federation break between AxM and Entra ID, you'd still be able to log in and fix it.

Few other interesting things I noticed while troubleshooting things. If you deleted an account in Entra ID, they are set to Deactivated in AxM. They are not removed from AxM, at least not initially. There might be a clean-up job that runs after so many days. If you disable an account in Entra ID, they are not deactivated in AxM, but they would not be able to complete their sign-in on the Entra ID side.
