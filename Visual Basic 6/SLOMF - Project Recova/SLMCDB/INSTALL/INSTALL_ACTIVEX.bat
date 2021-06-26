COPY "%~dp0MSCOMCT2.OCX" "%windir%\SysWOW64\MSCOMCT2.OCX" /Y
COPY "%~dp0mscomctl.ocx" "%windir%\SysWOW64\mscomctl.ocx" /Y
REGSVR32 "%windir%\SysWOW64\MSCOMCT2.OCX"
REGSVR32 "%windir%\SysWOW64\mscomctl.ocx"