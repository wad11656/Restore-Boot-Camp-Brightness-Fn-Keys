[xml]$xmlinfo = {<?xml version="1.0" encoding="UTF-16"?>
<Task version="1.4" xmlns="http://schemas.microsoft.com/windows/2004/02/mit/task">
  <RegistrationInfo>
    <Author></Author>
    <Description></Description>
    <URI>\Restore Boot Camp Screen Brightness Fn Keys</URI>
  </RegistrationInfo>
  <Triggers>
    <LogonTrigger>
      <Enabled>true</Enabled>
    </LogonTrigger>
  </Triggers>
  <Principals>
    <Principal id="Author">
      <LogonType>InteractiveToken</LogonType>
      <RunLevel>HighestAvailable</RunLevel>
    </Principal>
  </Principals>
  <Settings>
    <MultipleInstancesPolicy>IgnoreNew</MultipleInstancesPolicy>
    <DisallowStartIfOnBatteries>false</DisallowStartIfOnBatteries>
    <StopIfGoingOnBatteries>false</StopIfGoingOnBatteries>
    <AllowHardTerminate>true</AllowHardTerminate>
    <StartWhenAvailable>false</StartWhenAvailable>
    <RunOnlyIfNetworkAvailable>false</RunOnlyIfNetworkAvailable>
    <IdleSettings>
      <StopOnIdleEnd>true</StopOnIdleEnd>
      <RestartOnIdle>false</RestartOnIdle>
    </IdleSettings>
    <AllowStartOnDemand>true</AllowStartOnDemand>
    <Enabled>true</Enabled>
    <Hidden>false</Hidden>
    <RunOnlyIfIdle>false</RunOnlyIfIdle>
    <DisallowStartOnRemoteAppSession>false</DisallowStartOnRemoteAppSession>
    <UseUnifiedSchedulingEngine>true</UseUnifiedSchedulingEngine>
    <WakeToRun>false</WakeToRun>
    <Priority>7</Priority>
  </Settings>
  <Actions Context="Author">
    <Exec>
      <Command></Command>
      <Arguments></Arguments>
    </Exec>
  </Actions>
</Task>}

$xmlinfo.Task.RegistrationInfo.Description = "**USE CMD/WIN+Fn KEY FOR NORMAL Fn KEY FUNCTIONALITY** || F1 = Lower Brightness || F2 = Increase Brightness"
echo $xmlinfo.Task.RegistrationInfo.Description
$xmlinfo.Task.RegistrationInfo.Author = $env:username
echo $xmlinfo.Task.RegistrationInfo.Author
$xmlinfo.Task.Actions.Exec.Command = "cmd.exe"
echo $xmlinfo.Task.Actions.Exec.Command
$xmlinfo.Task.Actions.Exec.Arguments = "/c start ""Restore Fn Keys"" ""$env:programfiles\Restore Boot Camp Screen Brightness Fn Keys\Restore Boot Camp Screen Brightness Fn Keys.exe"""
echo $xmlinfo.Task.Actions.Exec.Arguments
$xmlinfo.Save("$env:systemdrive\task.xml")
if (Test-Path "$env:systemdrive\task.xml"){echo "1"}
schtasks.exe /create /f /tn "Restore Boot Camp Screen Brightness Fn Keys" /xml "$env:systemdrive\task.xml" |Out-Null

if (Test-Path "$env:systemdrive\task.xml"){Remove-Item "$env:systemdrive\task.xml"}