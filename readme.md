Dr Racket (formerly named PLT Scheme) Language snippets
======

Alguns snippets em Racket, entre outras coisas.

Interpretador e compilador
------

### Executar
Veja http://racket-lang.org/download/ para fazer o download. Instale e use a 
interface dele para executar os códigos sem compilar

### Compilar

Caso queira compilar os códigos via linha de comando, além de instalar o 
DrRacket, adicione a raiz do diretório base, (ex. C:\Program Files\Racket)
a variável PATH do seu usuário ou do systema, abra sua interface de linha
de comando, vá até o diretório que contém o código e digite:

	raco exe nome-do-arquivo.rkt
	
um arquivo executavel de nome nome-do-arquivo.exe (no caso de Windows)
seria gerado no mesmo diretorio do arquivo. Sem adicionar as variaveis 
de sistema, ficaria algo como o comando a seguir (Windows) 

	"C:\Program Files\Racket\raco.exe" exe "C:\pasta\nome-do-arquivo.rkt"
	
Saiba mais em http://docs.racket-lang.org/raco/exe.html

Documentação oficial
------

- http://docs.racket-lang.org/
- http://www.htdp.org/

Copyright & License
------

### Principal 
Exceto aonde digo o contrário no respectivo arquivo, todo é de Emerson Rocha 
Luiz com a licença MIT.

### INF-UFRGS
Se especificado este detentor dos direitos de cópia, é uma referência ao 
Instituto de Informática da UFRGS, especificamente professores da disciplina 
INF05008. Informações sobre a licença deve ser obtida direto destes.

### How to Design Programs
Veja http://www.htdp.org. Autores: Matthias Felleisen, Robert Bruce 
Findler, Matthew Flatt, Shriram Krishnamurthi