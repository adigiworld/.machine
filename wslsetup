echo "Set-up WSL in Windows 10 System."

echo "Step 1 - Enable the Windows Subsystem for Linux"
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
echo "Step 1 is completed."

echo ""

echo "Step 2 - Check requirements for running WSL 2"
echo "To update to WSL 2, you must be running Windows 10."
echo "Builds lower than 18362 do not support WSL 2. Use the Windows Update Assistant to update your version of Windows."
echo "Step 2 is completed."

echo ""

echo "Step 3 - Enable Virtual Machine feature"
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
echo "Step 3 is completed."

echo ""

echo "Step 4 - Download the Linux kernel update package"
echo "Download the latest package: WSL2 Linux kernel update package for x64 machines"
echo "Download Link : https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi"
echo "Run the update package downloaded."
echo "Step 4 is completed."

echo ""

echo "Step 5 - Set WSL 2 as your default version"
echo "Open PowerShell and run this command to set WSL 2 as the default version when installing a new Linux distribution:"
wsl --set-default-version 2
echo "wsl --set-version Ubuntu-22.04 2"
echo "Step 5 is completed."

echo ""

echo "Step 6 - Install your Linux distribution of choice"
echo "Open the Microsoft Store and select your favorite Linux distribution."
echo "Download Link : https://docs.microsoft.com/en-us/windows/wsl/install-win10"
echo "Run the downloaded Linux distribution of choice."

echo ""

echo "WSL installation complete."
echo "To set a distribution to be backed by either version of WSL please run: wsl --set-version <distribution name> <versionNumber>"