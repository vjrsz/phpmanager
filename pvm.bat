@echo off
setlocal

rem Caminho onde estão as versões do PHP
set PHP_DIR=C:\wamp64\bin\php

rem Se o usuário passar "list", mostrar as versões disponíveis
if "%1"=="list" (
    echo Versoes disponiveis:
    for /d %%D in ("%PHP_DIR%\php*") do (
        echo %%~nxD
    )
    exit /b 0
)

rem Verifica se o usuário passou uma versão
if "%1"=="" (
    echo Uso: pvm ^<versao^>
    echo Exemplo: pvm 8.1.0
    exit /b 1
)

rem Busca a pasta correspondente à versão
for /d %%D in ("%PHP_DIR%\php%1*") do set PHP_VERSION=%%D

if not defined PHP_VERSION (
    echo Versao %1 nao encontrada! Verifique em %PHP_DIR%
    exit /b 1
)

rem Remove versões antigas do PATH e adiciona a nova
setx PATH "%PHP_VERSION%;%PATH%" /M
echo Agora usando PHP %1 localizado em %PHP_VERSION%
