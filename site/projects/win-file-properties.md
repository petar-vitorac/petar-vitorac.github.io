---
permalink: /projects/win-file-properties/
title: "How to edit creation/edit/access time of a file on Windows"
---
# How to edit creation/edit/access time of a file on Windows
## Brief description
How to edit creation time, last edit or last access time of a file on Windows 10.

## Steps to reproduce
* Open "Windows PowerShell" (start menu -> search "Windows PowerShell")
* Type the following and press enter
```
Set-ItemProperty -Path [PATH] -Name [PROPERTY] -Value (Get-Date -Year [YEAR] -Month [MONTH] -Day [DAY] -Hour [HOUR] -Minute [MINUTE] -Second [SECOND])
```
  * Where `[PATH]` should be replaced by the full path of the file of which you want to modify the properties. Example: `"C:\Users\User1\file.txt"`
    * Warning: don't forget to include quotes (`"`) around the path!
    * Note: the full path of a file can be obtained by navigating to the file in the file explorer, right-click on the file while holding SHIFT, and left-click on "Copy as path"
  * Where `[PROPERTY]` should be replaced by either `CreationTime`, `LastAccessTime`, or `LastWriteTime` depending on which property you want to edit.
  * Where `[YEAR]`, `[MONTH]`, `[DAY]`, `[HOUR]`, `[MINUTE]`, and `[SECOND]` should be replaced by numbers representing the date and time that should be assigned to the file.
  * Full example which will set the last edit time of the file "C:\Users\User1\file.txt" to March 10, 2021 at 09:21:46:
  ```
  Set-ItemProperty -Path "C:\Users\User1\file.txt" -Name LastWriteTime -Value (Get-Date -Year 2021 -Month 3 -Day 10 -Hour 9 -Minute 21 -Second 46)
  ```

## [Return to projects](/projects/)

