iisreset /stop /timeout:100
Copy-Item C:\actions-runner\_work\mywebapp\mywebapp\$DOTNET_ROOT\mywebapp\* C:\inetpub\wwwroot\mywebapp -Recurse -Force
iisreset /start
