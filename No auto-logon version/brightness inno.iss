; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Restore Boot Camp Screen Brightness Fn Keys"
#define MyAppVersion "1.5"
#define MyAppPublisher "Wade's Tech Trove"
#define MyAppURL "https://wadestechtrove.blogspot.com/"
#define MyAppExeName "Restore Boot Camp Screen Brightness Fn Keys.exe"
#define MyUninstallerName "Uninstall"

[Setup]
PrivilegesRequired=admin
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D9BF2AD5-D959-4985-9281-DC529405FA6D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
InfoBeforeFile=READMEPRE.rtf
InfoAfterFile=READMEEND.rtf
OutputBaseFilename=Boot Camp Brightness Setup
;SetupIconFile=brightness.ico
Compression=lzma
SolidCompression=yes
AlwaysRestart=False
ArchitecturesInstallIn64BitMode=x64
UninstallFilesDir={app}\Uninstall

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Dirs]
Name: "{app}\Uninstall"; Attribs: hidden

[Files]
Source: "Restore Boot Camp Screen Brightness Fn Keys.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
;Source: "brightness.ico"; DestDir: "{app}";
Source: "Restore Boot Camp Screen Brightness Fn Keys.ps1"; DestDir: "{tmp}";

[Icons]
Name: "{app}\{#MyUninstallerName}"; Filename: "{app}\Uninstall\unins000.exe"
;Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"; ValueType: dword; ValueName: "DisableAutomaticRestartSignOn"; ValueData: "00000001"

[Run]
Filename: "powershell.exe"; \
  Parameters: "-NoProfile -ExecutionPolicy Bypass -File ""{tmp}\Restore Boot Camp Screen Brightness Fn Keys.ps1"""; \
  WorkingDir: {app}; Flags: runascurrentuser runhidden

[UninstallRun]
Filename: "schtasks"; \
    Parameters: "/DELETE /F /TN ""Restore Boot Camp Screen Brightness Fn Keys""";

[UninstallDelete]
Type: files; Name: "{app}\Restore Boot Camp Screen Brightness Fn Keys.exe"
Type: dirifempty; Name: "{app}"

[Code]
function InitializeUninstall(): Boolean;
  var ErrorCode: Integer;
begin
  ShellExec('open','taskkill.exe','/f /im "Restore Boot Camp Screen Brightness Fn Keys.exe"','',SW_HIDE,ewNoWait,ErrorCode);
  ShellExec('open','tskill.exe',' Restore Boot Camp Screen Brightness Fn Keys.exe','',SW_HIDE,ewNoWait,ErrorCode);
  result := True;
end;