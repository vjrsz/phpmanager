# PHP Version Manager (PVM)

`pvm.bat` é um script para Windows que permite alternar rapidamente entre diferentes versões do PHP instaladas no sistema.

## Instalação

1. Baixe e extraia as versões desejadas do PHP em uma pasta, por exemplo:
   ```
   C:\php\php8.1.0
   C:\php\php8.2.0
   ```

2. Salve o arquivo `pvm.bat` em um diretório acessível pelo terminal (ex: `C:\php\pvm.bat`).

3. (Opcional) Adicione `C:\php\` ao `PATH` do Windows para chamar `pvm` de qualquer lugar.

## Uso

### Alternar para uma versão específica do PHP
```sh
pvm 8.1.0  # Alterna para PHP 8.1.0
pvm 8.2.0  # Alterna para PHP 8.2.0
```

Se a versão informada não for encontrada, o script exibirá um aviso.

### Verificar a versão atual do PHP
```sh
php -v
```

## Como funciona
O script:
1. Verifica se um argumento foi passado.
2. Procura a pasta correspondente em `C:\php\`.
3. Atualiza o `PATH` do Windows para usar a versão selecionada.
4. Exibe a nova versão ativa do PHP.

## Exemplo de Saída
```sh
Agora usando PHP 8.1.0 localizado em C:\php\php8.1.0
```

## Requisitos
- Windows
- PHP instalado em `C:\php\` com nomes de pasta no formato `phpX.Y.Z` (ex: `php8.1.0`).

