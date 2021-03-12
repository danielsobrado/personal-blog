---
author: "Daniel Sobrado"
title: "Installing Kerberos"
date: 2021-01-12T14:31:02+04:00
draft: false
image: https://i.imgur.com/BAKNmf6.png
tags : [
    "Security"
]
categories : [
	"Programming"
]
type: post
---

> Kerberos is a ticket-based authentication protocol that allows us to communicate with each other.

There is a third party actor called Key Distribution Centre (KDC); it is a trusted node in the network.

There are some points to take into consideration:

Let's install a test Kerberos docker:
``docker pull godatadriven/krb5-kdc-server``

Or you can install it in your centos/Red Hat by using:
``yum install krb5-workstation``

If you don't have an external connection in your machine and you need to install it offline, you might find that downloading the RPMs is not enough and that you need to find additional dependencies for this you can:
1. Download an ISO of the repository and create a local repo.
2. Connect to an internal repo in your organization.
3. Use yumdownloader in another server to download all the dependencies.
``yumdownloader krb5-workstation --downloadonly --resolve``

Ok, we've installed Kerberos and now what?

#### Kerberos configuration file

The main configuration file for Kerberos is krb5.conf, it is usually found on /etc in Linux and contains the main details of the realms and other parameters.

#### Using Keytabs

A keytab is a file holding pairs of Kerberos principals and encrypted keys. You can use a keytab file to authenticate without entering a password. 

However, when you change your Kerberos password, you will require to recreate all your keytabs.

#### Authentication

You can use a keytab provided by your target administrator:

``kinit -k -t "mykeytab" <someprincipal>``

And you can check if you are holding a valid ticket with:

``klist -v``

If you get a valid ticket, you are all set up!

#### Is Kerberos secure?

With strong encryption and third-party verification, Kerberos is very secure. However, it is a very well known protocol, and there are many ways of hacking it. 

Some examples are Pass-the-ticket, Golden Ticket, Silver Ticket, Encryption downgrade with Skeleton Key Malware, DCShadow attack Credential stuffing or Brute force; these are out of the scope of this article.

#### Kerberos vs SSH

SSH doesn't need tickets; it works with certificates. The drawback is when removing a user, you'll need to revoke the certificate.
In Kerberos, you only need to remove the principal.