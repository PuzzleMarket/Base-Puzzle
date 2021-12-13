@echo off
echo Deletando Pasta CACHE...
echo -
rd /s /q "cache"
..\build\FXServer.exe ++set onesync on +exec server.cfg