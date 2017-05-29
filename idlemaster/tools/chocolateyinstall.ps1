$ErrorActionPreference = 'Stop';

$packageName = 'idlemaster'
$url = 'https://github.com/jshackles/idle_master/releases/download/v1.4.1/idle_master_1.4.1.zip'
$checksum ='A43A1B9882FBA7A5E987F90DBEEB5BCBD0DA0AD5A9D218B4B80D39CB1B3777F8'
$checksumType = 'SHA256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName	= $packageName
  url			= $url
  checksum		= $checksum
  checksumType	= $checksumType
  unzipLocation	= $toolsDir
}

Install-ChocolateyZipPackage @packageArgs