#lang racket
(require racket/gui/base)

;=============================================================
;CONTROLADOR NIVEL/FASE
;=============================================================
(define nivel_atual 0)
(define (proximo_nivel)
  (set! nivel_atual (+ nivel_atual 1))
  (if (> vidas 4)
      (inicia_frame_perdeu_jogo chutes)
      (begin 
        (cond
          [(= nivel_atual 1) (inicia_nivel_1.1)]
          [(= nivel_atual 2) (inicia_nivel_1.2)]
          [(= nivel_atual 3) (inicia_nivel_1.3)]
          [(= nivel_atual 4) (inicia_nivel_1.4)]
          [(= nivel_atual 5) (inicia_nivel_1.5)]
          [else (println "deu erro na funcao (proxima fase), é necessario criar outro nivel")]))));

;=============================================================
;INTERFACE 1.5
;=============================================================

(define frame_nivel_1.5 (new frame% [label "Nível 1.5"] [width 300] [height 200]))

(define msg-text-1.5 (new message% [parent frame_nivel_1.5] [label "Qual é a informação verdadeira sobre a linguagem Racket?"] [stretchable-width #t]))
(define msg-text2-1.5 (new message% [parent frame_nivel_1.5] [label ""] [stretchable-width #t]))

(define button1-1.5 (new button% [parent frame_nivel_1.5] [label "Racket não suporta orientação a objetos"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.5 show #f)
                                        (inicia_forca #t)
                                        )]))

(define button2-1.5 (new button% [parent frame_nivel_1.5] [label "Racket é comumente uasda em desenvolvimento Web Front-End"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.5 show #f)
                                        (inicia_forca #f)
                                        )]))

(define button3-1.5 (new button% [parent frame_nivel_1.5] [label "Racket é uma linguagem de programação que suporta programação funcional e procedural."]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.5 show #f)
                                        (inicia_forca #t)
                                        )]))

(define button4-1.5 (new button% [parent frame_nivel_1.5] [label " A sintaxe de Racket é baseada em C++."]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.5 show #f)
                                        (inicia_forca #f)
                                        )]))


(define (inicia_nivel_1.5) (send frame_nivel_1.5 show #t))
;=============================================================
;INTERFACE 1.4
;=============================================================

(define frame_nivel_1.4 (new frame% [label "Nível 1.4"] [width 300] [height 200]))

(define msg-text-1.4 (new message% [parent frame_nivel_1.4] [label "Qual dessas expressões sempre é verdadeira?"] [stretchable-width #t]))
(define msg-text2-1.4 (new message% [parent frame_nivel_1.4] [label ""] [stretchable-width #t]))

(define button1-1.4 (new button% [parent frame_nivel_1.4] [label "(or #f #f)"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.4 show #f)
                                        (inicia_forca #f)
                                        )]))

(define button2-1.4 (new button% [parent frame_nivel_1.4] [label "(= 44 125)"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.4 show #f)
                                        (inicia_forca #f)
                                        )]))

(define button3-1.4 (new button% [parent frame_nivel_1.4] [label "(= biscoito bolacha)  "]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.4 show #f)
                                        (inicia_forca #f)
                                        )]))

(define button4-1.4 (new button% [parent frame_nivel_1.4] [label "(nand #f #t)"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.4 show #f)
                                        (inicia_forca #t)
                                        )]))

(define (inicia_nivel_1.4) (send frame_nivel_1.4 show #t))

;=============================================================
;INTERFACE 1.3
;=============================================================

(define frame_nivel_1.3 (new frame% [label "Nível 1.3"] [width 300] [height 200]))

(define msg-text-1.3 (new message% [parent frame_nivel_1.3] [label "Como a seguinte expressão deveria ser escrita em Racket? "] [stretchable-width #t]))
(define msg-text2-1.3 (new message% [parent frame_nivel_1.3] [label " 5 + (2 - 3 ) + 4 * (2 - 7)"] [stretchable-width #t]))

(define button1-1.3 (new button% [parent frame_nivel_1.3] [label " (+(+ 5 (- 2 3))( * 4 (- 2 7)))"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.3 show #f)
                                        (inicia_forca #t)
                                        )]))

(define button2-1.3 (new button% [parent frame_nivel_1.3] [label "(5 + (2 - 3 ) + 4 * (2 - 7))"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.3 show #f)
                                        (inicia_forca #f)
                                        )]))

(define button3-1.3 (new button% [parent frame_nivel_1.3] [label "(*(*(+ (+ 5 (- 2 3)) 4) 2 )-7)  "]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.3 show #f)
                                        (inicia_forca #f)
                                        )]))

(define button4-1.3 (new button% [parent frame_nivel_1.3] [label "(nao + (sei, - tenha ) + piedade * milorde)"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.3 show #f)
                                        (inicia_forca #f)
                                        )]))


(define (inicia_nivel_1.3) (send frame_nivel_1.3 show #t))


;=============================================================
;INTERFACE 1.2
;=============================================================

(define frame_nivel_1.2 (new frame% [label "Nível 1.2"] [width 300] [height 200]))

(define msg-text-1.2 (new message% [parent frame_nivel_1.2] [label "Aperte no botão que contenha a forma correta de definir uma funcao que multiplica x e y: "] [stretchable-width #t]))
(define msg-text2-1.2 (new message% [parent frame_nivel_1.2] [label " "] [stretchable-width #t]))

(define button1-1.2 (new button% [parent frame_nivel_1.2] [label "(define  (multiplica  x  y)  (*  x  y))"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.2 show #f)
                                        (inicia_forca #t)
                                        )]))

(define button2-1.2 (new button% [parent frame_nivel_1.2] [label "(define  (multiplica)  (x  y)  (x  *  y)"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.2 show #f)
                                        (inicia_forca #f)
                                        )]))

(define button3-1.2 (new button% [parent frame_nivel_1.2] [label "(define  (multiplica float x, float y)  (x  *  y)"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.2 show #f)
                                        (inicia_forca #f)
                                        )]))

(define button4-1.2 (new button% [parent frame_nivel_1.2] [label "(define  (multiplica  x  y)  (**  x  y)"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.2 show #f)
                                        (inicia_forca #f)
                                        )]))


(define (inicia_nivel_1.2) (send frame_nivel_1.2 show #t))

;=============================================================
;INTERFACE 1.1
;=============================================================
(define frame_nivel_1.1 (new frame% [label "Nível 1.1"] [width 300] [height 200]))

(define msg-text-1.1 (new message% [parent frame_nivel_1.1] [label "Aperte no botão que contenha a forma correta de somar 4 e 5: "] [stretchable-width #t]))
(define msg-text2-1.1 (new message% [parent frame_nivel_1.1] [label " "] [stretchable-width #t]))

(define button1-1.1 (new button% [parent frame_nivel_1.1] [label "( 4  +  5 )"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.1 show #f)
                                        (inicia_forca #f)
                                        )]))

(define button2-1.1 (new button% [parent frame_nivel_1.1] [label "add(4 , 5)"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.1 show #f)
                                        (inicia_forca #f)
                                        )]))

(define button3-1.1 (new button% [parent frame_nivel_1.1] [label "( +  4  5)"]
                            [callback (lambda (button event)
                                        (send frame_nivel_1.1 show #f)
                                        (inicia_forca #t)
                                        )]))

(define button4-1.1 (new button% [parent frame_nivel_1.1] [label "(add  4  5)"]
                            [callback (lambda (button event)
                                       (send frame_nivel_1.1 show #f)
                                        (inicia_forca #f)
                                        )]))


(define (inicia_nivel_1.1) (send frame_nivel_1.1 show #t))
;=============================================================
;INTERFACE ACERTOU nivel
;=============================================================
(define frame_acertou_nivel (new frame% [label "Forca_acertou_nivel"] [width 300] [height 200])) ;esse frame aparece quando a pessoa perde

(define msg-text1_acertou_nivel (new message% [parent frame_acertou_nivel] [label "Parabéns, você acertou essa fase, agora você pode chutar letras!"] [stretchable-width #t]))
(define button_acertou_nivel (new button% [parent frame_acertou_nivel] [label "Entendido"]
     [callback (lambda (button event)
                 (send frame_acertou_nivel show #f)
                 (forca string_nivel4 vidas chutes))])) ;CHAMA  A FORCA
(define (inicia_frame_acertou_nivel) (send frame_acertou_nivel show #t))  

;=============================================================
;INTERFACE ERROU nivel
;=============================================================
(define frame_errou_nivel (new frame% [label "Fase_perdeu_nivel"] [width 300] [height 200])) ;esse frame aparece quando a pessoa perde uma fase

(define msg-text1_perdeu_nivel (new message% [parent frame_errou_nivel] [label "Você errou essa fase, você pode chutar letras mas perdeu uma vida."] [stretchable-width #t]))
(define button_perdeu_nivel (new button% [parent frame_errou_nivel] [label "Entendido"]
     [callback (lambda (button event)
                 (send frame_errou_nivel show #f)
                 (forca string_nivel4 vidas chutes))])) ;CHAMA  A FORCA 

(define (inicia_frame_errou_nivel) (send frame_errou_nivel show #t))  
;=============================================================
;INTERFACE ACERTOU LETRA
;=============================================================
(define frame_forca_acertou (new frame% [label "Forca_acertou"] [width 300] [height 200])) ;esse frame aparece quando a pessoa perde

(define msg-text1_acertou (new message% [parent frame_forca_acertou] [label "Parabéns, você acertou a letra, você pode chutar outra"] [stretchable-width #t]))
(define button_acertou (new button% [parent frame_forca_acertou] [label "Entendido"]
     [callback (lambda (button event)
                 (send frame_forca_acertou show #f)
                 (forca string_nivel4 vidas chutes))])) ;CHAMA  A FORCA DNV
(define (inicia_frame_forca_acertou) (send frame_forca_acertou show #t))  

;=============================================================
;INTERFACE ERROU LETRA
;=============================================================
(define frame_forca_errou (new frame% [label "Forca_perdeu"] [width 300] [height 200])) ;esse frame aparece quando a pessoa perde

(define msg-text1_perdeu (new message% [parent frame_forca_errou] [label "Você errou a letra, passe por outra fase para voltar a chutar letras."] [stretchable-width #t]))
(define button_perdeu (new button% [parent frame_forca_errou] [label "Entendido"]
     [callback (lambda (button event)
                 (send frame_forca_errou show #f)
                 (proximo_nivel))])) ;CHAMA PROXIMA FASE

(define (inicia_frame_forca_errou) (send frame_forca_errou show #t))
;=============================================================
;INTERFACE GANHOU O JOGO
;=============================================================
(define frame_ganhou_o_jogo (new frame% [label "Ganhou_o_jogo"] [width 300] [height 200])) ;esse frame aparece quando a pessoa acerta as 4 palavras

(define msg-text1_ganhou_o_jogo (new message% [parent frame_ganhou_o_jogo] [label "Você acertou todas as palavras e passou no teste do rei, parabéns!!"] [stretchable-width #t]))
(define button_ganhou_o_jogo (new button% [parent frame_ganhou_o_jogo] [label "Ufa"]
     [callback (lambda (button event)
                 (send frame_ganhou_o_jogo show #f))])) ;O PROGRAMA TERMINA

(define (inicia_frame_ganhou_o_jogo) (send frame_ganhou_o_jogo show #t))
;=============================================================
;INTERFACE VOCE JA CHUTOU ESSA LETRA
;=============================================================
(define frame_ja_chutou_essa_letra (new frame% [label "Ja_chutou"] [width 300] [height 200])) ;esse frame aparece quando a pessoa acerta as 4 palavras

(define msg-text1_ja_chutou_essa_letra (new message% [parent frame_ja_chutou_essa_letra] [label "Você já tinha chutado essa letra, chute outra!"] [stretchable-width #t]))
(define button_ja_chutou_essa_letra (new button% [parent frame_ja_chutou_essa_letra] [label "Entendido"]
     [callback (lambda (button event)
                 (send frame_ja_chutou_essa_letra show #f)
                 (send frame_forca show #t)
                 )]))

(define (inicia_frame_ja_chutou_essa_letra) (send frame_ja_chutou_essa_letra show #t))
;=============================================================
;SORTEIA PALAVRAS
;=============================================================
(define vetor_nivel4 (vector "define" "lambda" "unless" "provide" "require" "module" "include" "vector" "struct"))
(define palavra_nivel4 (vector-ref vetor_nivel4 (random 9)))
(define string_nivel4 (make-vector (string-length palavra_nivel4) "_ " ))
(println palavra_nivel4)

(define vetor_nivel3 (vector "quote" "begin" "while" "unless" "match" "input"))
(define palavra_nivel3 (vector-ref vetor_nivel3 (random 6)))
(define string_nivel3 (make-vector (string-length palavra_nivel3) "_ " ))

(define vetor_nivel2 (vector "cond" "when" "else" "when" "case"))
(define palavra_nivel2 (vector-ref vetor_nivel2 (random 5)))
(define string_nivel2 (make-vector (string-length palavra_nivel2) "_ " ))

(define vetor_nivel1 (vector "let" "if" "set" "and" "or" "not" "for" "do" "key"))
(define palavra_nivel1 (vector-ref vetor_nivel1 (random 9)))
(define string_nivel1 (make-vector (string-length palavra_nivel1) "_ " ))
;=============================================================
;CONTROLADOR 
;=============================================================

;=============================================================
;CONTROLADOR FORCA
;=============================================================
(define vidas 0)
(define acertou_palavra #f)
(define chutes "Letras já chutadas: ")
(define quantidade_letras_acertadas 0)

(define (inicia_forca acertou) ;;essa funcao é chamada quando um nivel é completado e vai para a forca
        (if (not acertou)
            (begin
            (inicia_frame_errou_nivel)
            (set! vidas (+ vidas 1))
            )
            (inicia_frame_acertou_nivel)
        )
    #t
 )

;vector-str é a palavra que fica em baixo da forca, tipo: "a b a c a _ e"
(define (forca vector-str vidas chutes);essa funcao continua o jogo da forca
  (send msg-text9-forca set-label (string-join (vector->list vector-str) "")) 
  (send msg-text11-forca set-label chutes)
  (cond
  [(= vidas 0) (send frame_forca show #t)]
  [(= vidas 1)
   (send msg-text5-forca set-label "|     O")
   (send frame_forca show #t)]
  
  [(= vidas 2)
   (begin
     (send msg-text5-forca set-label "|     O")
     (send msg-text6-forca set-label "|     |"))
     (send frame_forca show #t)]
  
  [(= vidas 3)
   (begin
     (send msg-text5-forca set-label "|     O")
     (send msg-text6-forca set-label "|    -|-"))
     (send frame_forca show #t)]
  
  [(= vidas 4)
   (begin
     (send msg-text5-forca set-label "|     O")
     (send msg-text6-forca set-label "|    -|-")
     (send msg-text7-forca set-label "|    /|"))
     (send frame_forca show #t)]
   
  [else
   (inicia_frame_perdeu_jogo chutes)])
  )

(define letras_chutadas empty)
(define aux 0) ;eu nao encontrei outra maneira de fazer isso sem essa variavel auxiliar, ja que o 'for' tem que percorrer a palavra interira antes da funcao retornar alguma coisa
(define (efetuou_chute letra)
  (set! aux 0) ;se aux = 0 o usuario errou a letra
  (if (member (string-downcase letra) letras_chutadas)
  (set! aux 3) ;se aux = 3 significa que o usuario ja chutou essa palavra
  (begin
    (set! chutes (string-append chutes " " (string-downcase letra)))
    (set! letras_chutadas (cons (string-downcase letra) letras_chutadas))
    (for/list ([i (in-range (string-length palavra_nivel4))])
      (when (string=? (substring palavra_nivel4 i (+ i 1)) (string-downcase letra))
        (begin 
          (set! aux 1) ;se aux = 0 o usuario acertou a letra
          (set! quantidade_letras_acertadas (+ quantidade_letras_acertadas 1))
          (vector-set! string_nivel4 i (string-append (string-downcase letra) " "))
          (when (= (string-length palavra_nivel4) quantidade_letras_acertadas)
             (set! aux 2) ;se aux = 2 significa que o usuario terminou de acertar todas as letras
             )
          )
        )
      )
    )
  )
  (cond
    [(= aux 0)
     (set! vidas (+ vidas 1))
     (inicia_frame_forca_errou)]
    [(= aux 1)
     (inicia_frame_forca_acertou)]
    [(= aux 2)
     (inicia_frame_ganhou_o_jogo)]
    [(= aux 3)
     (inicia_frame_ja_chutou_essa_letra)]
     )
)
;=============================================================
;INTERFACE PERDEU JOGO
;=============================================================
(define frame_perdeu_jogo (new frame% [label "Perdeu_jogo"] [width 300] [height 200])) ;esse frame aparece quando a pessoa perde o jogo
(define msg-text1-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label ""] [stretchable-width #t]))
(define msg-text2-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label "Infelizmente você não passou no teste. :("][stretchable-width #t]))
(define msg-text2_5-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label (string-append "A palavra era: " palavra_nivel4)][stretchable-width #t]))
(define msg-text3-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label " ____"][stretchable-width #t]))
(define msg-text4-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label "|     |"][stretchable-width #t]))
(define msg-text5-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label "|     O"][stretchable-width #t]))
(define msg-text6-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label "|    -|-"][stretchable-width #t]))
(define msg-text7-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label "|    /|"][stretchable-width #t]))
(define msg-text8-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label "|"][stretchable-width #t]))
(define msg-text9-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label (string-join (vector->list string_nivel4) "")][stretchable-width #t])) ;AAAAAAAAAAAAAAAAAAAAA
(define msg-text10-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label ""][stretchable-width #t]))
(define msg-text11-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label chutes][stretchable-width #t]))
(define msg-text12-perdeu-jogo (new message% [parent frame_perdeu_jogo] [label ""] [stretchable-width #t]))


(define button-perdeu-jogo (new button% [parent frame_perdeu_jogo] [label "Entendi :("] ;botão de confirmar letra
                             [callback (lambda (button event)
                                         (send frame_perdeu_jogo show #f))]))
(define (inicia_frame_perdeu_jogo chutes_realizados)
   (send frame_perdeu_jogo show #t)
    (send msg-text11-perdeu-jogo set-label chutes_realizados)) ;isso tem que ser feito de maneira dinâmica
;=============================================================
;INTERFACE FORCA
;=============================================================
(define frame_forca (new frame% [label "Forca"] [width 300] [height 200]))
(define valor-digitado #f)

(define msg-text1-forca (new message% [parent frame_forca] [label ""] [stretchable-width #t]))
(define msg-text2-forca (new message% [parent frame_forca] [label "Chute uma letra minuscula, você deve acertar a palavra abaixo da forca: "][stretchable-width #t]))
(define msg-text2_5-forca (new message% [parent frame_forca] [label "Obs: o rei não gosta de engraçadinhos e vai mandar direto pra forca se você confirmar algo que não é uma letra *minúscula*"][stretchable-width #t]))
(define msg-text3-forca (new message% [parent frame_forca] [label " ____"][stretchable-width #t]))
(define msg-text4-forca (new message% [parent frame_forca] [label "|     |"][stretchable-width #t]))
(define msg-text5-forca (new message% [parent frame_forca] [label "|"][stretchable-width #t]))
(define msg-text6-forca (new message% [parent frame_forca] [label "|"][stretchable-width #t]))
(define msg-text7-forca (new message% [parent frame_forca] [label "|"][stretchable-width #t]))
(define msg-text8-forca (new message% [parent frame_forca] [label "|"][stretchable-width #t]))
(define msg-text9-forca (new message% [parent frame_forca] [label "| _  _  _  _"][stretchable-width #t]))
(define msg-text10-forca (new message% [parent frame_forca] [label " "][stretchable-width #t]))
(define msg-text11-forca (new message% [parent frame_forca] [label "Letras já chutadas:"][stretchable-width #t]))

(define text-box-forca (new text-field% [parent frame_forca] [label ""] [stretchable-width #t]))



(define button-forca (new button% [parent frame_forca] [label "confirmar letra"] ;botão de confirmar letra
                             [callback (lambda (button event)
                                         (send frame_forca show #f)
                                         (set! valor-digitado (send text-box-forca get-value)) ;isso daqui caputura o valor captado no text-field e armazena na variável valor-digitado
                                         (efetuou_chute valor-digitado)
                                         ) 
                                         ]))

;=============================================================
;INTERFACE MAIN
;=============================================================
(define frame_main (new frame% [label "Introdução"] [width 300] [height 200]))

(define msg-text1-main (new message% [parent frame_main] [label "--==Essa história se passa em 1645 d.c==--"] [stretchable-width #t]))
(define msg-text2-main (new message% [parent frame_main] [label "O rei ficou maluco, ele está chateado com os niveis de educação do paíz e resolveu intervir da sua própria maneira. "][stretchable-width #t]))
(define msg-text3-main (new message% [parent frame_main] [label "Todas os seus súditos serão submetidas a testes de lógica de programação em racket e de alfabetismo."][stretchable-width #t]))
(define msg-text4-main (new message% [parent frame_main] [label "Nesse teste um súdito de cada vez deve: acertar um problema de lógica e em seguida chutar letras para tentar acertar uma palavra."][stretchable-width #t]))
(define msg-text5-main (new message% [parent frame_main] [label "Se a pessoa errar uma letra ela deve acertar outro problema de lógica para voltar a chutar letras."][stretchable-width #t]))
(define msg-text6-main (new message% [parent frame_main] [label "Se a pessoa errar 5 letras ela vai para a forca e perde."][stretchable-width #t]))
(define msg-text7-main (new message% [parent frame_main] [label "A pessoa deve acertar 4 palavras para passar no teste."][stretchable-width #t]))
(define msg-text8-main (new message% [parent frame_main] [label "As palavras são palavras usadas na linguagem Racket."][stretchable-width #t]))

(define button1-main (new button% [parent frame_main] [label "Entendi! Vamos começar"]
                            [callback (lambda (button event)
                                        (send frame_main show #f)
                                        (proximo_nivel) ;;essa funcao inicia a proxima fase, comaça na 1.1
                                        )]))
(send frame_main show #t)
