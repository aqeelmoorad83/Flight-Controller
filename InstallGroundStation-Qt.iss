;
; Parallax GroundStation install script
;

[Setup]
AppName=Parallax GroundStation
AppVersion=1.0.5a
AppSupportURL=https://www.parallax.com/support
AppSupportPhone=1-916-624-8333

DefaultDirName={pf}\Parallax Inc\GroundStation
DefaultGroupName=Parallax Inc\GroundStation
UninstallDisplayIcon={app}\GroundStation.exe
Compression=lzma2
SolidCompression=yes
OutputDir=.
OutputBaseFilename=Install-Parallax-GroundStation-V105a

WizardImageFile=InstallerLogo.bmp
WizardImageStretch=yes

[Tasks]
Name: desktopicon; Description: "Create a desktop icon"; GroupDescription: "Additional icons:";

[Files]
Source: "Groundstation-Release\*.*"; DestDir: "{app}"; Flags: recursesubdirs
Source: "GroundStation-Qt\*.*"; DestDir: "{app}\Sources\GroundStation-Qt"; Flags: recursesubdirs; Excludes: "GroundStation.pro.user,.gitignore"
Source: "Firmware-C\*.*"; DestDir: "{app}\Sources\Firmware-C"; Excludes: ".gitignore"

[Icons]
Name: "{group}\Parallax GroundStation"; Filename: "{app}\GroundStation.exe"
Name: "{group}\Uninstall GroundStation"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Parallax GroundStation"; Filename: "{app}\GroundStation.exe"; Tasks: desktopicon