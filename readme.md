Dr Racket (formerly named PLT Scheme) Language snippets
======

Alguns snippets em Racket, entre outras coisas.

Interpretador e compilador
------

### Executar
Veja http://racket-lang.org/download/ para fazer o download. Instale e use a 
interface dele para executar os c�digos sem compilar

### Compilar

Caso queira compilar os c�digos via linha de comando, al�m de instalar o 
DrRacket, adicione a raiz do diret�rio base, (ex. C:\Program Files\Racket)
a vari�vel PATH do seu usu�rio ou do systema, abra sua interface de linha
de comando, v� at� o diret�rio que cont�m o c�digo e digite:

	raco exe nome-do-arquivo.rkt
	
um arquivo executavel de nome nome-do-arquivo.exe (no caso de Windows)
seria gerado no mesmo diretorio do arquivo. Sem adicionar as variaveis 
de sistema, ficaria algo como o comando a seguir (Windows) 

	"C:\Program Files\Racket\raco.exe" exe "C:\pasta\nome-do-arquivo.rkt"
	
Saiba mais em http://docs.racket-lang.org/raco/exe.html

Documenta��o oficial
------

- http://docs.racket-lang.org/
- http://www.htdp.org/

Copyright & License
------

### Principal 
Exceto aonde digo o contr�rio no respectivo arquivo, todo � de Emerson Rocha 
Luiz com a licen�a MIT.

### INF-UFRGS
Se especificado este detentor dos direitos de c�pia, � uma refer�ncia ao 
Instituto de Inform�tica da UFRGS, especificamente professores da disciplina 
INF05008. Informa��es sobre a licen�a deve ser obtida direto destes.

### How to Design Programs
Veja http://www.htdp.org. Autores: Matthias Felleisen, Robert Bruce 
Findler, Matthew Flatt, Shriram Krishnamurthi