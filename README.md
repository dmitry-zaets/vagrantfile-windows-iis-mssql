Vagrantfile for testing ASP.NET (MVC) Websites on Windows
=============================

This repository contains Windows Vagrantfile ([Windows 2008 R2 x64 with Service Pack 1](https://vagrantcloud.com/ferventcoder/boxes/win2008r2-x64-nocm)) with all that you need to test ASP.NET Website.

#How to use?
1. Clone repository by `git clone`
2. Put your website with compiled binary files to \website folder
3. Download ([.NET Framework](http://download.microsoft.com/download/E/2/1/E21644B5-2DF2-47C2-91BD-63C560427900/NDP452-KB2901907-x86-x64-AllOS-ENU.exe)) and ([MSSQL Server](http://download.microsoft.com/download/0/4/B/04BE03CD-EAF3-4797-9D8D-2E08E316C998/SQLEXPRWT_x64_ENU.exe)) and place them into folder of cloned repository
4. Run `vargant up` and wait will virtual machine is installed
5. Open http://127.0.0.1:1025/ in a browser

##Vagrant file includes:
* IIS 7.5
* .NET 4.5.2
* MS SQL Server 2008 R2

##Vagrant file provides:
* Test website (website directory: `C:\website`) runned on IIS (based on repository \website folder).
* MSSQL Database named `test`.(Username:`test`, Password:`abcABC123!`)
 
**Missing provisioner for component?**  
Not a problem!  
Feel free to contact me via email: vagrantfile.windows@gmail.com
