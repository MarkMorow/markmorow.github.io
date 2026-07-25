---
layout: post
title: Setting Up Apple Business Manager in 2024
date: 2024-08-22 05:00::00
description: And You Can Too!
tags: notes learning apple
giscus_comments: true
related_posts: false
---

A gap in my Apple enterprise knowledge is the Apple Business/School Manager, sometimes abbreviated as AxM for short. For most companies, they have an instance set up. As someone whose Apple "Enterprise" is their own lab of a few devices, I haven't had any hands-on experience with ABM. This also includes something that is becoming increasingly important, Managed Apple IDs or, as it's now known, Managed Apple Accounts as of WWDC 2024. These are needed if you are trying to use any features of the [AppleSeed for IT program](https://beta.apple.com/it).

Kandji has a nice blog about the history of the managed Apple ID space: https://blog.kandji.io/managed-apple-id-evolution. At the start of 2024 I thought this would be a perfect time to set up my own instance of Apple Business Manager. Doing a search for prior steps on how to do this led me to the always excellent Rich Trotons [blog](https://derflounder.wordpress.com/2023/09/04/starting-a-sole-proprietorship-business-to-get-a-duns-number-for-apple-business-manager/).

I thought I would share my experience and steps in early 2024 of setting this up. It is possible some of these steps have changed when you go through the process, as updates are happening all the time. Tom Bridge called this out around this time last year that the [sign-up experience has improved](https://tombridge.com/2023/08/18/positive-changes-to-apple-business-manager-signup-flows/).

Before we get into the details, this is solely my experience setting this up in the United States. Please consult experts local to your region if you are actually going to be setting this up for your actual business. I am not that expert for you.

The first thing I did was sign up for an EIN number and follow the sole proprietorship setup: https://www.irs.gov/businesses/small-businesses-self-employed/apply-for-an-employer-identification-number-ein-online.

The second thing was to purchase a domain name. This is not a requirement to set up ABM, but I was trying to make my own enterprise setup as realistic as possible.

Then, I applied for a DUNS number at https://www.dnb.com/duns/get-a-duns.html. I selected the free version and uploaded the EIN PDF. Two days later, I received my DUNS number. The website says this can take up to 30 days.

With this DUNS number in hand, I was ready to start with ABM following this [documentation](https://support.apple.com/en-ke/guide/apple-business-manager/axm402206497/web).

I clicked through Get Started to provide my information in the form.

![Sign Up](/assets/img/ABM_SetUp_1_Form.png)

_Apple Business Manager Sign Up_

It then asked me to create an account.

![Create Account](/assets/img/ABM_SetUp_2_Create_Account.png)

_Apple Business Manager Create Account_

I had to verify the account, set up a phone number for multi-factor, and agree with the terms and conditions. I was then welcomed with the ABM screen.

![Welcome](/assets/img/ABM_SetUp_3_Welcome.png)

_Welcome to Apple Business Manager !_

The next step the documentation mentions is to verify your organization. You can do some basic functionality without verifying and you only have 59 days to complete the verification process.

![Unverified](/assets/img/ABM_SetUp_4_Unverified.png)

_Organization is unveified to start_

This is where the DUNS number comes in. You add the DUNS number to your organazition in ABM. Apple will also call the verification contact to confirm information about your organization and ensure that it actually exists.

![Pending](/assets/img/ABM_SetUp_5_Pending.png)

_Organization is now pending_

Once that process is complete, you will see that your verification of ABM is complete.

![Complete](/assets/img/ABM_SetUp_6_Complete.png)

_Organization verification is now complete_

The last thing I did at this time was to verify the domain I had purchased by following this [documentation](https://support.apple.com/en-ke/guide/apple-business-manager/axm48c3280c0/web). The TXT record hostname should be @ and the value will be something similar to "apple-domain-verification=YourUniqueValue". You can now create Managed Apple IDs/Managed Apple Accounts with that domain name.

I'd also like to add that Tom Bridge gave an excellent session in July 2024 at PSU MacAdmins on Managed Apple IDs and showed some of these latest sign-up experiences in his [talk](https://youtu.be/xA0D6oVzcUk?si=Kd26UaruSl8kqhmR).
