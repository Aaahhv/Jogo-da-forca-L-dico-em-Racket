#lang racket
(require racket/gui/base)
;=============================================================
;CONTROLADOR FASE
;=============================================================
(define fase_atual 0)

(define (proxima_fase)
  (set! fase_atual (+ fase_atual 1))
  (cond
  [(= fase_atual 1) (inicia_nivel_1.1)]
  [(= fase_atual 2) (inicia_nivel_1.2)]
  [(= fase_atual 3) (inicia_nivel_1.3)]
 ; [(= fase_atual 4) (inicia_nivel_1.4)]
 ; [(= fase_atual 5) (inicia_nivel_1.5)]
  [else (println "PERDEU")]));ELSE FUNCAO_PERDEU

;=============================================================
;INTERFACE 1.5
;=============================================================

;=============================================================
;INTERFACE 1.4
;=============================================================

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
;INTERFACE ACERTOU FASE
;=============================================================
(define frame_acertou_fase (new frame% [label "Forca_acertou"] [width 300] [height 200])) ;esse frame aparece quando a pessoa perde

(define msg-text1_acertou_fase (new message% [parent frame_acertou_fase] [label "Parabéns, você acertou essa fase, agora você pode chutar letras!"] [stretchable-width #t]))
(define button_acertou_fase (new button% [parent frame_acertou_fase] [label "Entendido"]
     [callback (lambda (button event)
                 (send frame_acertou_fase show #f)
                 (forca string_nivel4 vidas chutes))])) ;CHAMA  A FORCA
(define (inicia_frame_acertou_fase) (send frame_acertou_fase show #t))  

;=============================================================
;INTERFACE ERROU FASE
;=============================================================
(define frame_errou_fase (new frame% [label "Fase_perdeu"] [width 300] [height 200])) ;esse frame aparece quando a pessoa perde uma fase

(define msg-text1_perdeu_fase (new message% [parent frame_errou_fase] [label "Você errou essa fase, você pode chutar letras mas perdeu uma vida."] [stretchable-width #t]))
(define button_perdeu_fase (new button% [parent frame_errou_fase] [label "Entendido"]
     [callback (lambda (button event)
                 (send frame_errou_fase show #f)
                 (forca string_nivel4 vidas chutes))])) ;CHAMA  A FORCA 

(define (inicia_frame_errou_fase) (send frame_errou_fase show #t))  
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
                 (proxima_fase))])) ;CHAMA PROXIMA FASE

(define (inicia_frame_forca_errou) (send frame_forca_errou show #t))  

;=============================================================
;CONTROLADOR FORCA
;=============================================================
(define vidas 0)
(define acertou_palavra #f)
(define chutes "Letras já chutadas: ")

;;as funcoes a seguir definem as palavras sorteadas para a forca, para cada jogo são sorteadas 4 palavras
(define vetor_nivel4 (vector "define" "lambda" "unless" "provide" "require" "module" "include" "vector" "struct"))
(define palavra_nivel4 (vector-ref vetor_nivel4 (random 9)))
(define string_nivel4 (make-vector (string-length palavra_nivel4) "_ " ))
(println palavra_nivel4)

(define vetor_nivel3 (vector "quote" "begin" "while" "unless" "match" "input"))
(define palavra_nivel3 (vector-ref vetor_nivel3 (random 6)))

(define vetor_nivel2 (vector "cond" "when" "else" "when" "case"))
(define palavra_nivel2 (vector-ref vetor_nivel2 (random 5)))

(define vetor_nivel1 (vector "let" "if" "set" "and" "or" "not" "for" "do" "key"))
(define palavra_nivel1 (vector-ref vetor_nivel1 (random 9)))

(define (inicia_forca acertou) ;;essa funcao é chamada quando um nivel é completado e vai para a forca
        (if (not acertou)
            (begin
            (inicia_frame_errou_fase)
            (set! vidas (+ vidas 1))
            )
            (inicia_frame_acertou_fase)
        )
    #t
 )

(define (forca vector-str vidas chutes);essa funcao continua o jogo
          (send msg-text9-forca set-label (string-join (vector->list vector-str) ""))
          (send msg-text11-forca set-label chutes)
  
  (cond
  [(= vidas 1)
   (send msg-text5-forca set-label "|     O")]
  
  [(= vidas 2)
   (begin
     (send msg-text5-forca set-label "|     O")
     (send msg-text6-forca set-label "|     |"))]
  
  [(= vidas 3)
   (begin
     (send msg-text5-forca set-label "|     O")
     (send msg-text6-forca set-label "|    -|-"))]
  
  [(= vidas 4)
   (begin
     (send msg-text5-forca set-label "|     O")
     (send msg-text6-forca set-label "|    -|-")
     (send msg-text7-forca set-label "|    /|"))]
  
  [else #f]) ;ELSE FUNCAO_PERDEU KKKKKKKKKKKK

          (send frame_forca refresh)
          (send frame_forca show #t)
  )

(define aux 0) ;eu nao encontrei outra maneira de fazer isso sem essa variavel auxiliar
(define (efetuou_chute letra)
  (set! chutes (string-append chutes " " letra))
  (set! aux 0)
  (for/list ([i (in-range (string-length palavra_nivel4))])
    (if (string=? (substring palavra_nivel4 i (+ i 1)) letra)
        (begin    ;ACERTOU
          (set! aux 1)
          (vector-set! string_nivel4 i (string-append letra " ")))
        (+ aux 0)
    ))
    (if (= aux 1)
        (inicia_frame_forca_acertou)
        (begin
          (set! vidas (+ vidas 1))
          (inicia_frame_forca_errou)
          )
  )
)

;=============================================================
;INTERFACE FORCA
;=============================================================
(define frame_forca (new frame% [label "Forca"] [width 300] [height 200]))
(define valor-digitado #f) ;essa variavel serve para armazenar o valor digitado pelo usuario

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
                                         ) ;chama a funcao do controlador, ela verifica se ele acertou ou errou
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
                                        (proxima_fase) ;;essa funcao inicia a proxima fase, comaça na 1.1
                                        )]))
(send frame_main show #t)
