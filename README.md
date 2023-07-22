# AutoStartUp (Windows Only)

This is the script that automatically open target project folder with vscode in start up

1. Set the location of Configure file (AutoStartUp_Configure.txt), PowerShell file (AutoStartUp_Powershell.ps1), PowerShell Log file (PowerShell_Log.txt) and Batch Error Log file (Batch_Error_Log.txt) inside the batch script in AutoStartUp_Batch.bat file using VS Code or txt editor
2. Set the location of your target project folder in AutoStartUp_Configure.txt file using VS Code or txt editor
3. Press Win + R and search "shell:startup" to open the folder contain the file that will be open automatically when start up
4. Put the AutoStartUp_Batch.bat inside that folder
5. Restart you PC and you will find your project is automatically opened with VS Code

** Note: AutoStartUp_Powershell.ps1 file is NOT required to put into the shart up folder (in step 3)