SetupSSHonAMIs
==============

I needed to create an CentOS-based AWS marketplace AMI at work and the instances needed to get their authorized_keys for root set from the keypair specified to AWS.

It was annoying to have to write this since I'm sure tons of other people have had to do it, so I'm releasing it to keep anyone else from needing to write it.

Usage
=====
Copy the init script to your AMI using your configuration manager of choice. I'm at a Chef shop, so I've included a quick Chef recipe snippet, configure_ssh_from_aws.rb you can copy.
