Windows Vagrantfile with Shell provisioners
=============================

This repository contains Windows Vagrantfile ([Windows 2008 R2 x64 with Service Pack 1](https://vagrantcloud.com/ferventcoder/boxes/win2008r2-x64-nocm)) with all that you need to test ASP.NET Website.

#How to use?
1. Clone repository by `git clone`
2. Put your website with compiled binary files to \test-website folder.
3. Download ([.NET Framework](http://download.microsoft.com/download/1/6/7/167F0D79-9317-48AE-AEDB-17120579F8E2/NDP451-KB2858728-x86-x64-AllOS-ENU.exe)) and ([MSSQL Server](http://download.microsoft.com/download/0/4/B/04BE03CD-EAF3-4797-9D8D-2E08E316C998/SQLEXPRWT_x64_ENU.exe)) and place them into folder of cloned repository.
4. Run `vargant up` and wait will virtual machine is installed;
5. Open http://127.0.0.1:85/ in a browser.g

##Vagrant file includes:
* IIS 7.5
* .NET 4.5
* MS SQL Server 2008 R2

##Vagrant file provides:
* Test website (website directory: `C:\test-website`) runned on IIS (based on repository \test-website folder).
* MSSQL Database named `test`.(Username:`test`, Password:`abcABC123!`)
 
**Missing provisioner for component?**
Not a problem! Feel free to create an issue or write an email on vagrantfile.windows@gmail.com
