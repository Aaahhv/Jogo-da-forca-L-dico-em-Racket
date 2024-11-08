
;=============================================================
;;Paradigmas de Programação Lógica e Funcional
;;Professor: Wagner Igarashi
;;Alunos: Amanda Helena Viscovini 
;;        Gabriel Bitdinger Medeiros RA: 118542
;=============================================================

;================ Forca Lúdica em Racket =====================
;O trabalho consiste num jogo de forca associado a um quiz
;de perguntas sobre a linguagem Racket.
;O jogador deve chutar uma letra por vez. Caso acerte, pode
;chutar a próxima. Caso erre, perde uma vida e uma pergunta
;do quiz é exibida.
;Todas as palavras do jogo são palavras reservadas da linguagem Racket.
;As perguntas do quiz são sobre a linguagem Racket e o 
;jogador deve escolher a alternativa correta,e se errar, 
;perde mais uma vida. Se acertar, não perde vidas e tem o 
;direito de chutar mais uma letra.
;O jogo possui 3 níveis de dificuldade, e o jogador possui 
;6 vidas para cada nível, representadas pelo bonequinho na forca.
;Ao completar um nível, o próximo é iniciado. 
;Cada um dos níveis tem variações, e as palavras são sorteadas aleatoriamente. 

#lang racket
(require racket/gui/base)

;; Definição de cada uma das perguntas do quiz em cada nível:
;=============================================================
;INTERFACE 3.5
;=============================================================

(define frame_nivel_3.5 (new frame% [label "Nível 3.5"] [width 300] [height 200]))

(define msg-text-3.5
  (new message%
       [parent frame_nivel_3.5]
       [label "Determine a afirmação correta sobre as aplicações em Racket:"]
       [stretchable-width #t]))
(define msg-text2-3.5 (new message% [parent frame_nivel_3.5] [label ""] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-3.5
  (new button%
       [parent frame_nivel_3.5]
       [label "Racket é principalmente usada para desenvolvimento de jogos."]
       [callback
        (lambda (button event)
          (send frame_nivel_3.5 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-3.5
  (new button%
       [parent frame_nivel_3.5]
       [label "Racket é utilizada para programação científica e acadêmica."]
       [callback
        (lambda (button event)
          (send frame_nivel_3.5 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-3.5
  (new button%
       [parent frame_nivel_3.5]
       [label "Racket é a linguagem mais popular para desenvolvimento de aplicativos móveis."]
       [callback
        (lambda (button event)
          (send frame_nivel_3.5 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-3.5
  (new button%
       [parent frame_nivel_3.5]
       [label "É impossível desenvolver um jogo em Racket"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.5 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_3.5)
  (send frame_nivel_3.5 show #t))
;=============================================================
;INTERFACE 3.4
;=============================================================
(define frame_nivel_3.4 (new frame% [label "Nível 3.4"] [width 300] [height 200]))

(define msg-text-3.4
  (new
   message%
   [parent frame_nivel_3.4]
   [label
    "Qual seria a expressão da 5° linha para que  a função (fibonacci n) retornasse o nésimo número da sequencia de fibonacci"]
   [stretchable-width #t]))
(define msg-text2-3.4
  (new message% [parent frame_nivel_3.4] [label "1-  (define (fibonacci n)"] [stretchable-width #t]))
(define msg-text3-3.4
  (new message% [parent frame_nivel_3.4] [label "2-    (cond"] [stretchable-width #t]))
(define msg-text4-3.4
  (new message% [parent frame_nivel_3.4] [label "3-     ((= n 0) 0)"] [stretchable-width #t]))
(define msg-text5-3.4
  (new message% [parent frame_nivel_3.4] [label "4-     ((= n 1) 1)"] [stretchable-width #t]))
(define msg-text6-3.4
  (new message% [parent frame_nivel_3.4] [label "5-     "] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-3.4
  (new button%
       [parent frame_nivel_3.4]
       [label "((= n 2) 2)))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.4 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-3.4
  (new button%
       [parent frame_nivel_3.4]
       [label "(else (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.4 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-3.4
  (new button%
       [parent frame_nivel_3.4]
       [label "(else ((fibonacci (/ n 1)) + (fibonacci (* n 2))))))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.4 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-3.4
  (new button%
       [parent frame_nivel_3.4]
       [label "(else return {(fibonacci (- n 1)) and (fibonacci (- n 2)))}))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.4 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_3.4)
  (send frame_nivel_3.4 show #t))
;=============================================================
;INTERFACE 3.3
;=============================================================

(define frame_nivel_3.3 (new frame% [label "Nível 3.3"] [width 300] [height 200]))

(define msg-text-3.3
  (new message%
       [parent frame_nivel_3.3]
       [label "Selecione a opção correta para imprimir os quadrados dos números de 1 a 4 em Racket:"]
       [stretchable-width #t]))
(define msg-text2-3.3 (new message% [parent frame_nivel_3.3] [label ""] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-3.3
  (new button%
       [parent frame_nivel_3.3]
       [label "(while (<= i 4) (display (expt i 2)))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.3 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-3.3
  (new button%
       [parent frame_nivel_3.3]
       [label "(for ([i (in-range 1 5)]) (display (* i i)))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.3 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-3.3
  (new button%
       [parent frame_nivel_3.3]
       [label "(loop (from 1 to 4) (print (square i)))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.3 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-3.3
  (new button%
       [parent frame_nivel_3.3]
       [label "(print-squares 1 4)"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.3 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_3.3)
  (send frame_nivel_3.3 show #t))

;=============================================================
;INTERFACE 3.2
;=============================================================

(define frame_nivel_3.2 (new frame% [label "Nível 3.2"] [width 300] [height 200]))

(define msg-text-3.2
  (new message%
       [parent frame_nivel_3.2]
       [label
        "Aperte no botão que contenha uma forma correta de calcular a soma de todos os números de 1 até 10"]
       [stretchable-width #t]))
(define msg-text2-3.2 (new message% [parent frame_nivel_3.2] [label " "] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-3.2
  (new button%
       [parent frame_nivel_3.2]
       [label "(for ([i (in-range 1 11)]) (set! resultado (+ resultado i)))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.2 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-3.2
  (new button%
       [parent frame_nivel_3.2]
       [label "(calculate-add 1 10)"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.2 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-3.2
  (new button%
       [parent frame_nivel_3.2]
       [label "(add (range 1 10))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.2 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-3.2
  (new button%
       [parent frame_nivel_3.2]
       [label "(while (<= i 10) (add i))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.2 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_3.2)
  (send frame_nivel_3.2 show #t))

;=============================================================
;INTERFACE 3.1
;=============================================================
(define frame_nivel_3.1 (new frame% [label "Nível 3.1"] [width 300] [height 200]))

(define msg-text-3.1
  (new message%
       [parent frame_nivel_3.1]
       [label "Qual das opções define uma lista com os elementos 3, 7 e 8? "]
       [stretchable-width #t]))
(define msg-text2-3.1 (new message% [parent frame_nivel_3.1] [label " "] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-3.1
  (new button%
       [parent frame_nivel_3.1]
       [label "(define lst (const 3 7 8 empty))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.1 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-3.1
  (new button%
       [parent frame_nivel_3.1]
       [label "(define lst (cons 8 (cons 7 (cons 3 empty))))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.1 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-3.1
  (new button%
       [parent frame_nivel_3.1]
       [label "(define lst (cons 3 7 8 empty))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.1 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-3.1
  (new button%
       [parent frame_nivel_3.1]
       [label "(list (cons 8 (cons 7 (cons 3 empty))))"]
       [callback
        (lambda (button event)
          (send frame_nivel_3.1 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_3.1)
  (send frame_nivel_3.1 show #t))
;=============================================================
;INTERFACE 2.5
;=============================================================

(define frame_nivel_2.5 (new frame% [label "Nível 2.5"] [width 300] [height 200]))

(define msg-text-2.5
  (new message%
       [parent frame_nivel_2.5]
       [label "Qual é a informação verdadeira sobre a linguagem Racket?"]
       [stretchable-width #t]))
(define msg-text2-2.5 (new message% [parent frame_nivel_2.5] [label ""] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-2.5
  (new button%
       [parent frame_nivel_2.5]
       [label "Racket não suporta orientação a objetos"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.5 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-2.5
  (new button%
       [parent frame_nivel_2.5]
       [label "Racket é comumente usada em desenvolvimento Web Front-End"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.5 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-2.5
  (new button%
       [parent frame_nivel_2.5]
       [label "Racket é uma linguagem de programação que suporta programação funcional e procedural."]
       [callback
        (lambda (button event)
          (send frame_nivel_2.5 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-2.5
  (new button%
       [parent frame_nivel_2.5]
       [label " A sintaxe de Racket é baseada em C++."]
       [callback
        (lambda (button event)
          (send frame_nivel_2.5 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_2.5)
  (send frame_nivel_2.5 show #t))
;=============================================================
;INTERFACE 2.4
;=============================================================

(define frame_nivel_2.4 (new frame% [label "Nível 2.4"] [width 300] [height 200]))

(define msg-text-2.4
  (new
   message%
   [parent frame_nivel_2.4]
   [label
    "Escolha a alternativa ERRADA para verificar se um número é positivo, negativo ou zero em Racket:"]
   [stretchable-width #t]))
(define msg-text2-2.4 (new message% [parent frame_nivel_2.4] [label ""] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-2.4
  (new button%
       [parent frame_nivel_2.4]
       [label "(cond [(> num 0) 'positivo] [(< num 0) 'negativo] [else 'zero])"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.4 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-2.4
  (new button%
       [parent frame_nivel_2.4]
       [label "(when (> num 0) 'positivo)(when (< num 0) 'negativo)(when (= num 0) 'zero)"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.4 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-2.4
  (new button%
       [parent frame_nivel_2.4]
       [label "(if (> num 0) 'positivo (if (< num 0) 'negativo 'zero)) "]
       [callback
        (lambda (button event)
          (send frame_nivel_2.4 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-2.4
  (new button%
       [parent frame_nivel_2.4]
       [label "(num > 0 ? 'positive : (num < 0 ? 'negative : 'zero)))"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.4 show #f)
          (inicia_forca #t))]))

(define (inicia_nivel_2.4)
  (send frame_nivel_2.4 show #t))

;=============================================================
;INTERFACE 2.3
;=============================================================

(define frame_nivel_2.3 (new frame% [label "Nível 2.3"] [width 300] [height 200]))

(define msg-text-2.3
  (new message%
       [parent frame_nivel_2.3]
       [label
        "Escolha a expressão correta para determinar se o número num está entre 10 e 20 em Racket: "]
       [stretchable-width #t]))
(define msg-text2-2.3 (new message% [parent frame_nivel_2.3] [label ""] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-2.3
  (new button%
       [parent frame_nivel_2.3]
       [label "(between-10-and-20 num"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.3 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-2.3
  (new button%
       [parent frame_nivel_2.3]
       [label "(if (and (>= num 10) (<= num 20)) #t #f))"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.3 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-2.3
  (new button%
       [parent frame_nivel_2.3]
       [label "(num >= 10 && num <= 20)"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.3 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-2.3
  (new button%
       [parent frame_nivel_2.3]
       [label "(if (num > 11 && num < 20) #t #t)"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.3 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_2.3)
  (send frame_nivel_2.3 show #t))

;=============================================================
;INTERFACE 2.2
;=============================================================

(define frame_nivel_2.2 (new frame% [label "Nível 2.2"] [width 300] [height 200]))

(define msg-text-2.2
  (new message%
       [parent frame_nivel_2.2]
       [label "Determine a expressão adequada para verificar se o número num é par em Racket:"]
       [stretchable-width #t]))
(define msg-text2-2.2 (new message% [parent frame_nivel_2.2] [label " "] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-2.2
  (new button%
       [parent frame_nivel_2.2]
       [label "(=  (/  num  2) 0)"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.2 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-2.2
  (new button%
       [parent frame_nivel_2.2]
       [label "(check-parity! num)"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.2 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-2.2
  (new button%
       [parent frame_nivel_2.2]
       [label "(par? num) "]
       [callback
        (lambda (button event)
          (send frame_nivel_2.2 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-2.2
  (new button%
       [parent frame_nivel_2.2]
       [label "(if  (even? num)  #t  #f)"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.2 show #f)
          (inicia_forca #t))]))

(define (inicia_nivel_2.2)
  (send frame_nivel_2.2 show #t))

;=============================================================
;INTERFACE 2.1
;=============================================================
(define frame_nivel_2.1 (new frame% [label "Nível 2.1"] [width 300] [height 200]))

(define msg-text-2.1
  (new
   message%
   [parent frame_nivel_2.1]
   [label
    "Aperte no botão que contenha a opção correta para verificar se o número num é positivo em Racket: "]
   [stretchable-width #t]))
(define msg-text2-2.1 (new message% [parent frame_nivel_2.1] [label " "] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-2.1
  (new button%
       [parent frame_nivel_2.1]
       [label "(if (> num 0) #f #f)"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.1 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-2.1
  (new button%
       [parent frame_nivel_2.1]
       [label "(positive? num)"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.1 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-2.1
  (new button%
       [parent frame_nivel_2.1]
       [label "(num > 0 ? true : false)"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.1 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-2.1
  (new button%
       [parent frame_nivel_2.1]
       [label "(num > 0)"]
       [callback
        (lambda (button event)
          (send frame_nivel_2.1 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_2.1)
  (send frame_nivel_2.1 show #t))

;=============================================================
;INTERFACE 1.5
;=============================================================

(define frame_nivel_1.5 (new frame% [label "Nível 1.5"] [width 300] [height 200]))

(define msg-text-1.5
  (new message%
       [parent frame_nivel_1.5]
       [label "Escolha a forma certa de calcular a raíz quadrada de 25: "]
       [stretchable-width #t]))
(define msg-text2-1.5 (new message% [parent frame_nivel_1.5] [label ""] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-1.5
  (new button%
       [parent frame_nivel_1.5]
       [label "√25"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.5 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-1.5
  (new button%
       [parent frame_nivel_1.5]
       [label "(sqrt 25)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.5 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-1.5
  (new button%
       [parent frame_nivel_1.5]
       [label "(25 sqrt)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.5 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-1.5
  (new button%
       [parent frame_nivel_1.5]
       [label "(root 25 2)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.5 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_1.5)
  (send frame_nivel_1.5 show #t))
;=============================================================
;INTERFACE 1.4
;=============================================================

(define frame_nivel_1.4 (new frame% [label "Nível 1.4"] [width 300] [height 200]))

(define msg-text-1.4
  (new message%
       [parent frame_nivel_1.4]
       [label "Qual dessas expressões sempre é verdadeira?"]
       [stretchable-width #t]))
(define msg-text2-1.4 (new message% [parent frame_nivel_1.4] [label ""] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-1.4
  (new button%
       [parent frame_nivel_1.4]
       [label "(or #f #f)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.4 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-1.4
  (new button%
       [parent frame_nivel_1.4]
       [label "(= 44 125)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.4 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-1.4
  (new button%
       [parent frame_nivel_1.4]
       [label "(= biscoito bolacha)  "]
       [callback
        (lambda (button event)
          (send frame_nivel_1.4 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-1.4
  (new button%
       [parent frame_nivel_1.4]
       [label "(nand #f #t)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.4 show #f)
          (inicia_forca #t))]))

(define (inicia_nivel_1.4)
  (send frame_nivel_1.4 show #t))

;=============================================================
;INTERFACE 1.3
;=============================================================

(define frame_nivel_1.3 (new frame% [label "Nível 1.3"] [width 300] [height 200]))

(define msg-text-1.3
  (new message%
       [parent frame_nivel_1.3]
       [label "Como a seguinte expressão deveria ser escrita em Racket? "]
       [stretchable-width #t]))
(define msg-text2-1.3
  (new message%
       [parent frame_nivel_1.3]
       [label " 5 + (2 - 3 ) + 4 * (2 - 7)"]
       [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-1.3
  (new button%
       [parent frame_nivel_1.3]
       [label " (+(+ 5 (- 2 3))( * 4 (- 2 7)))"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.3 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-1.3
  (new button%
       [parent frame_nivel_1.3]
       [label "(5 + (2 - 3 ) + 4 * (2 - 7))"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.3 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-1.3
  (new button%
       [parent frame_nivel_1.3]
       [label "(*(*(+ (+ 5 (- 2 3)) 4) 2 )-7)  "]
       [callback
        (lambda (button event)
          (send frame_nivel_1.3 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-1.3
  (new button%
       [parent frame_nivel_1.3]
       [label "(nao + (sei, - tenha ) + piedade * milorde)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.3 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_1.3)
  (send frame_nivel_1.3 show #t))

;=============================================================
;INTERFACE 1.2
;=============================================================

(define frame_nivel_1.2 (new frame% [label "Nível 1.2"] [width 300] [height 200]))

(define msg-text-1.2
  (new message%
       [parent frame_nivel_1.2]
       [label
        "Aperte no botão que contenha a forma correta de definir uma funcao que multiplica x e y: "]
       [stretchable-width #t]))
(define msg-text2-1.2 (new message% [parent frame_nivel_1.2] [label " "] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-1.2
  (new button%
       [parent frame_nivel_1.2]
       [label "(define  (multiplica  x  y)  (*  x  y))"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.2 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-1.2
  (new button%
       [parent frame_nivel_1.2]
       [label "(define  (multiplica)  (x  y)  (x  *  y)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.2 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-1.2
  (new button%
       [parent frame_nivel_1.2]
       [label "(define  (multiplica float x, float y)  (x  *  y)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.2 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-1.2
  (new button%
       [parent frame_nivel_1.2]
       [label "(define  (multiplica  x  y)  (**  x  y)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.2 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_1.2)
  (send frame_nivel_1.2 show #t))

;=============================================================
;INTERFACE 1.1
;=============================================================
(define frame_nivel_1.1 (new frame% [label "Nível 1.1"] [width 300] [height 200]))

(define msg-text-1.1
  (new message%
       [parent frame_nivel_1.1]
       [label "Aperte no botão que contenha a forma correta de somar 4 e 5: "]
       [stretchable-width #t]))
(define msg-text2-1.1 (new message% [parent frame_nivel_1.1] [label " "] [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button1-1.1
  (new button%
       [parent frame_nivel_1.1]
       [label "( 4  +  5 )"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.1 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button2-1.1
  (new button%
       [parent frame_nivel_1.1]
       [label "add(4 , 5)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.1 show #f)
          (inicia_forca #f))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button3-1.1
  (new button%
       [parent frame_nivel_1.1]
       [label "( +  4  5)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.1 show #f)
          (inicia_forca #t))]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button4-1.1
  (new button%
       [parent frame_nivel_1.1]
       [label "(add  4  5)"]
       [callback
        (lambda (button event)
          (send frame_nivel_1.1 show #f)
          (inicia_forca #f))]))

(define (inicia_nivel_1.1)
  (send frame_nivel_1.1 show #t))

;=============================================================
;INTERFACE ACERTOU NIVEL
;=============================================================
; Frame que aparece quando o jogador acerta uma pergunta
(define frame_acertou_nivel
  (new frame%
       [label "Acertou_nivel"]
       [width 300]
       [height 200]))

(define msg-text1_acertou_nivel
  (new message%
       [parent frame_acertou_nivel]
       [label "Parabéns, você acertou esse nível, agora você pode chutar letras!"]
       [stretchable-width #t]))

;;input --> void
;;define o botão acertou nível, e a ação que será executada quando ele for pressionado (chama a forca)
(define button_acertou_nivel
  (new button%
       [parent frame_acertou_nivel]
       [label "Entendido"]
       [callback
        (lambda (button event)
          (send frame_acertou_nivel show #f)
          (forca))])) ;CHAMA  A FORCA
(define (inicia_frame_acertou_nivel)
  (send frame_acertou_nivel show #t))

;=============================================================
;INTERFACE ERROU NIVEL
;=============================================================
; Frame que aparece quando o jogador erra uma pergunta
(define frame_errou_nivel
  (new frame%
       [label "Errou_nivel"]
       [width 300]
       [height 200]))

(define msg-text1_perdeu_nivel
  (new message%
       [parent frame_errou_nivel]
       [label "Você errou esse nível, você pode chutar letras mas perdeu uma vida."]
       [stretchable-width #t]))

;;input --> void
;;define o botão acertou nível, e a ação que será executada quando ele for pressionado (chama a forca)
(define button_perdeu_nivel
  (new button%
       [parent frame_errou_nivel]
       [label "Entendido"]
       [callback
        (lambda (button event)
          (send frame_errou_nivel show #f)
          (forca))])) ;CHAMA  A FORCA

(define (inicia_frame_errou_nivel)
  (send frame_errou_nivel show #t))
;=============================================================
;INTERFACE ACERTOU LETRA
;=============================================================
; Frame que aparece quando o jogador acerta uma letra da palavra
(define frame_forca_acertou
  (new frame%
       [label "Acertou_letra"]
       [width 300]
       [height 200]))

(define msg-text1_acertou
  (new message%
       [parent frame_forca_acertou]
       [label "Parabéns, você acertou a letra, você pode chutar outra."]
       [stretchable-width #t]))

;;input --> void
;;define o botão acertou nível, e a ação que será executada quando ele for pressionado (chama a forca)
(define button_acertou
  (new button%
       [parent frame_forca_acertou]
       [label "Entendido!"]
       [callback
        (lambda (button event)
          (send frame_forca_acertou show #f)
          (forca))])) ;CHAMA  A FORCA DNV
(define (inicia_frame_forca_acertou)
  (send frame_forca_acertou show #t))
;=============================================================
;INTERFACE ERROU LETRA
;=============================================================
; Frame que aparece quando o jogador erra uma letra da palavra
(define frame_forca_errou
  (new frame%
       [label "Errou_Letra"]
       [width 300]
       [height 200]))

(define msg-text1_perdeu
  (new message%
       [parent frame_forca_errou]
       [label "Você errou a letra, passe por outro nível para voltar a chutar letras."]
       [stretchable-width #t]))

;;input --> void
;;define o botão acertou nível, e a ação que será executada quando ele for pressionado (chama a próxima pergunta)
(define button_perdeu
  (new button%
       [parent frame_forca_errou]
       [label "Entendido."]
       [callback
        (lambda (button event)
          (send frame_forca_errou show #f)
          (proximo_nivel))])) ;CHAMA PROXIMA PERGUNTA

(define (inicia_frame_forca_errou)
  (send frame_forca_errou show #t))
;=============================================================
;INTERFACE PASSOU DE FASE
;=============================================================
;Frame que aparece quando uma palavra é acertada, e o nível é vencido
(define frame_passou_de_fase
  (new frame%
       [label "Passou_de_fase"]
       [width 300]
       [height 200]))

(define msg-text1_passou_de_fase
  (new message%
       [parent frame_passou_de_fase]
       [label "Parabéns, você acertou a palavra e passou de fase"]
       [stretchable-width #t]))
(define msg-text2_passou_de_fase
  (new message% [parent frame_passou_de_fase] [label ""] [stretchable-width #t]))

;;input --> void
;;define o botão acertou nível, e a ação que será executada quando ele for pressionado (chama a próxima pergunta)
(define button_passou_de_fase
  (new button%
       [parent frame_passou_de_fase]
       [label "Obrigado!"]
       [callback
        (lambda (button event)
          (send frame_passou_de_fase show #f)
          (send msg-text2_passou_de_fase set-label (string-append "A palavra era " palavra_atual))
          (forca))]))

(define (inicia_frame_passou_de_fase)
  (send frame_passou_de_fase show #t))
;=============================================================
;INTERFACE GANHOU O JOGO
;=============================================================
;Esse frame aparece quando a pessoa acerta as 4 palavras
(define frame_ganhou_o_jogo
  (new frame%
       [label "Ganhou_o_jogo"]
       [width 300]
       [height 200])) 
(define msg-text1_ganhou_o_jogo
  (new message%
       [parent frame_ganhou_o_jogo]
       [label "Você acertou todas as palavras e passou no teste do rei, parabéns!!"]
       [stretchable-width #t]))
(define msg-text2_ganhou_o_jogo
  (new message% [parent frame_ganhou_o_jogo] [label ""] [stretchable-width #t]))
;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado
(define button_ganhou_o_jogo
  (new
   button%
   [parent frame_ganhou_o_jogo]
   [label "Ufa..."]
   [callback
    (lambda (button event)
      (send msg-text2_ganhou_o_jogo set-label (string-append "A ultima palavra era " palavra_atual))
      (send frame_ganhou_o_jogo show #f))])) ;O PROGRAMA TERMINA

(define (inicia_frame_ganhou_o_jogo)
  (send frame_ganhou_o_jogo show #t))
;=============================================================
;INTERFACE VOCE JA CHUTOU ESSA LETRA
;=============================================================
;;Frame que será exibido quando o jogador chuta uma mesma letra pela segunda vez
(define frame_ja_chutou_essa_letra
  (new frame%
       [label "Ja_chutou"]
       [width 300]
       [height 200]))

(define msg-text1_ja_chutou_essa_letra
  (new message%
       [parent frame_ja_chutou_essa_letra]
       [label "Você já tinha chutado essa letra, chute outra!"]
       [stretchable-width #t]))

;;Input --> Void
;;Define o botão, e a ação que será executada quando ele for pressionado

(define button_ja_chutou_essa_letra
  (new button%
       [parent frame_ja_chutou_essa_letra]
       [label "Entendido"]
       [callback
        (lambda (button event)
          (send frame_ja_chutou_essa_letra show #f)
          (send frame_forca show #t))]))

(define (inicia_frame_ja_chutou_essa_letra)
  (send frame_ja_chutou_essa_letra show #t))
;=============================================================
;SORTEIA PALAVRAS
;=============================================================
;Define as palavras a serem sorteadas de cada nível
(define vetor_nivel3 (vector "unless" "define" "lambda" "provide" "require" "module" "include" "vector" "struct"))
(define vetor_nivel2 (vector "cond" "when" "case" "while" "begin" "match" "input"))
(define vetor_nivel1 (vector "let" "set" "and" "not" "for" "key" "else"))
;Sorteia uma palavra para cada nivel
(define palavra_nivel3 (vector-ref vetor_nivel3 (random 9)))
(define palavra_nivel2 (vector-ref vetor_nivel2 (random 7)))
(define palavra_atual (vector-ref vetor_nivel1 (random 7)))

;Usado para exibir o tamanho da palavra sorteada em baixo da forca, exemplo: "_ _ _ _"
;O nível 1 é inicalizado já na variável palavra_atual, que será usada para controlar 
;os níveis do jogo posteriormente.
(define vetor-string-palavra3 (make-vector (string-length palavra_nivel3) "_ "))
(define vetor-string-palavra2 (make-vector (string-length palavra_nivel2) "_ "))
(define vetor-string-palavra-atual (make-vector (string-length palavra_atual) "_ "))

;Insere todas as palavras sorteadas em uma lista, que também será usada para controlar 
;os níveis do jogo posteriormente.
(define lista_palavras (list palavra_nivel2 palavra_nivel3))
(define vetor-string_palavras (list vetor-string-palavra2 vetor-string-palavra3))
;=============================================================
;CONTROLADOR NIVEL
;=============================================================
;;Lista de métodos que iniciam os níveis
(define lista_niveis
  (list inicia_nivel_1.1
        inicia_nivel_1.2
        inicia_nivel_1.3
        inicia_nivel_1.4
        inicia_nivel_1.5
        inicia_nivel_2.1
        inicia_nivel_2.2
        inicia_nivel_2.3
        inicia_nivel_2.4
        inicia_nivel_2.5
        inicia_nivel_3.1
        inicia_nivel_3.2
        inicia_nivel_3.3
        inicia_nivel_3.4
        inicia_nivel_3.5))

;;Void --> Void
;;Remove o primeiro elemento da lista de níveis, para que o próximo nível seja exibido
(define (proximo_nivel)
  ((first lista_niveis))
  (set! lista_niveis (rest lista_niveis)))

;=============================================================
;CONTROLADOR FASE
;=============================================================
(define fase 0)
;;Void --> Void
;Função que percorre as listas de palavras e passa para a próxima fase (próxima palavra).
(define (proxima_palavra)
  (set! palavra_atual (first lista_palavras))
  (set! lista_palavras (rest lista_palavras))
  (set! vetor-string-palavra-atual (first vetor-string_palavras))
  (set! vetor-string_palavras (rest vetor-string_palavras)))

;Void --> Void
;Altera as listas e chama as funções necessárias para controlar o avanço das fases
(define (proxima_fase)
  (set! fase (+ fase 1))
  ;recomeca a forca:
  (set! acertou_palavra #f)
  (set! quantidade_letras_acertadas 0)
  (set! vidas 0)
  (set! letras_chutadas empty)
  (set! chutes "Letras já chutadas: ")
  (cond
    [(= fase 1)
     (set!
      lista_niveis
      (remove* ;remove os niveis não foram jogados da fase passada
       (list inicia_nivel_1.1 inicia_nivel_1.2 inicia_nivel_1.3 inicia_nivel_1.4 inicia_nivel_1.5)
       lista_niveis))
     (proxima_palavra)
     (inicia_frame_passou_de_fase)]
    [(= fase 2)
     (set!
      lista_niveis
      (remove*  ;remove os niveis não foram jogados da fase passada
       (list inicia_nivel_2.1 inicia_nivel_2.2 inicia_nivel_2.3 inicia_nivel_2.4 inicia_nivel_2.5)
       lista_niveis))
     (proxima_palavra)
     (inicia_frame_passou_de_fase)]
    [(= fase 3) (inicia_frame_ganhou_o_jogo)]))
;=============================================================
;CONTROLADOR FORCA
;=============================================================
;Inicializa os parâmetros da forca
(define vidas 0)
(define acertou_palavra #f)
(define chutes "Letras já chutadas: ")
(define quantidade_letras_acertadas 0)

;;Boolean --> Void
;;essa funcao é chamada quando um nivel é completado e vai para a forca
;;se acertou for verdadeiro significa que o usuario acertou o nível passado
;;se acertou for falso significa que o usuario errou o nível passado
(define (inicia_forca acertou) 
  (if (not acertou)
      (begin
        (inicia_frame_errou_nivel)
        (set! vidas (+ vidas 1)))
      (inicia_frame_acertou_nivel)))

;;Void --> Void
;;Exibe a forca na tela de acordo com o número de vidas do jogador
;;obs: vetor-string-palavra-atual é a palavra que fica em baixo da forca, tipo: "a b a c a _ e"
(define (forca)
  (send msg-text9-forca set-label (string-join (vector->list vetor-string-palavra-atual) ""))
  (send msg-text11-forca set-label chutes)
  (cond
    [(= vidas 0)
     (send msg-text5-forca set-label "|      ")
     (send msg-text6-forca set-label "|      ")
     (send msg-text7-forca set-label "|      ")
     (send frame_forca show #t)]
    [(= vidas 1)
     (send msg-text5-forca set-label "|     O")
     (send msg-text6-forca set-label "|      ")
     (send msg-text7-forca set-label "|      ")
     (send frame_forca show #t)]

    [(= vidas 2)
     (send msg-text5-forca set-label "|     O")
     (send msg-text6-forca set-label "|     |")
     (send msg-text7-forca set-label "|      ")
     (send frame_forca show #t)]

    [(= vidas 3)
     (send msg-text5-forca set-label "|     O")
     (send msg-text6-forca set-label "|    -|")
     (send msg-text7-forca set-label "|      ")
     (send frame_forca show #t)]

    [(= vidas 4)
     (send msg-text5-forca set-label "|     O")
     (send msg-text6-forca set-label "|    -|-")
     (send msg-text7-forca set-label "|      ")
     (send frame_forca show #t)]

    [(= vidas 5)
     (send msg-text5-forca set-label "|     O")
     (send msg-text6-forca set-label "|    -|-")
     (send msg-text7-forca set-label "|    /|")
     (send frame_forca show #t)]

    [else (inicia_frame_perdeu_jogo)]))

(define letras_chutadas empty)
(define aux 0) 

;;String --> Void
;;Avalia se a letra já foi chutada ou não, se a letra está na palavra ou não, se o jogador acertou todas as letras ou não.
;;e define um número que será usado para chamar a interface correta
(define (efetuou_chute letra)
  (set! aux 0) ;se aux = 0 o usuario errou a letra
  (if (member (string-downcase letra) letras_chutadas)
      (set! aux 3) ;se aux = 3 significa que o usuario ja chutou essa palavra
      (begin
        (set! chutes (string-append chutes " " (string-downcase letra)))
        (set! letras_chutadas (cons (string-downcase letra) letras_chutadas))
        (for/list ([i (in-range (string-length palavra_atual))])
          (when (string=? (substring palavra_atual i (+ i 1)) (string-downcase letra))
            (begin
              (set! aux 1) ;se aux = 1 o usuario acertou a letra
              (set! quantidade_letras_acertadas (+ quantidade_letras_acertadas 1))
              (vector-set! vetor-string-palavra-atual i (string-append (string-downcase letra) " "))
              (when (= (string-length palavra_atual) quantidade_letras_acertadas)
                (set! aux 2) ;se aux = 2 significa que o usuario terminou de acertar todas as letras
                ))))))
  (cond
    [(= aux 0)
     (set! vidas (+ vidas 1))
     (if (> vidas 5) (inicia_frame_perdeu_jogo) (inicia_frame_forca_errou))]
    [(= aux 1) (inicia_frame_forca_acertou)]
    [(= aux 2) (proxima_fase)]
    [(= aux 3) (inicia_frame_ja_chutou_essa_letra)]))
;=============================================================
;INTERFACE PERDEU JOGO
;=============================================================
(define frame_perdeu_jogo
  (new frame%
       [label "Perdeu_jogo"]
       [width 300]
       [height 200])) ;esse frame aparece quando a pessoa perde o jogo
(define msg-text1-perdeu-jogo
  (new message% [parent frame_perdeu_jogo] [label ""] [stretchable-width #t]))
(define msg-text2-perdeu-jogo
  (new message%
       [parent frame_perdeu_jogo]
       [label "Infelizmente você não passou no teste. :("]
       [stretchable-width #t]))
(define msg-text2_5-perdeu-jogo
  (new message%
       [parent frame_perdeu_jogo]
       [label (string-append "A palavra era: ")]
       [stretchable-width #t]))
(define msg-text3-perdeu-jogo
  (new message% [parent frame_perdeu_jogo] [label " ____"] [stretchable-width #t]))
(define msg-text4-perdeu-jogo
  (new message% [parent frame_perdeu_jogo] [label "|     |"] [stretchable-width #t]))
(define msg-text5-perdeu-jogo
  (new message% [parent frame_perdeu_jogo] [label "|     O"] [stretchable-width #t]))
(define msg-text6-perdeu-jogo
  (new message% [parent frame_perdeu_jogo] [label "|    -|-"] [stretchable-width #t]))
(define msg-text7-perdeu-jogo
  (new message% [parent frame_perdeu_jogo] [label "|    /|"] [stretchable-width #t]))
(define msg-text8-perdeu-jogo
  (new message% [parent frame_perdeu_jogo] [label "|"] [stretchable-width #t]))
(define msg-text9-perdeu-jogo
  (new message% [parent frame_perdeu_jogo] [label (string-join (vector->list vetor-string-palavra-atual) "")] [stretchable-width #t]))
(define msg-text10-perdeu-jogo
  (new message% [parent frame_perdeu_jogo] [label ""] [stretchable-width #t]))
(define msg-text11-perdeu-jogo
  (new message% [parent frame_perdeu_jogo] [label ""] [stretchable-width #t]))
(define msg-text12-perdeu-jogo
  (new message% [parent frame_perdeu_jogo] [label ""] [stretchable-width #t]))

;;Input --> Void
;;Define o botão perdeu_jogo, e sua função de fechar o frame atual
(define button-perdeu-jogo
  (new button%
       [parent frame_perdeu_jogo]
       [label "Entendi :("] ;botão de confirmar letra
       [callback (lambda (button event) (send frame_perdeu_jogo show #f))]))

(define (inicia_frame_perdeu_jogo)
  (send frame_perdeu_jogo show #t)

  (send msg-text2_5-perdeu-jogo set-label (string-append "A palavra era: " palavra_atual))
  (send msg-text9-perdeu-jogo set-label (string-join (vector->list vetor-string-palavra-atual) ""))
  (send msg-text11-perdeu-jogo set-label chutes))

;=============================================================
;INTERFACE FORCA
;=============================================================
;Inicializa o frame da forca
(define frame_forca (new frame% [label "Forca"] [width 300] [height 200]))
(define valor-digitado #f)

(define msg-text1-forca (new message% [parent frame_forca] [label ""] [stretchable-width #t]))
(define msg-text2-forca
  (new message%
       [parent frame_forca]
       [label
        "Chute uma letra, você deve acertar a palavra abaixo da forca (a palavra está em inglês): "]
       [stretchable-width #t]))
(define msg-text2_5-forca
  (new
   message%
   [parent frame_forca]
   [label
    "Obs: o rei não gosta de engraçadinhos e vai mandar direto pra forca se você confirmar algo que não é uma única letra"]
   [stretchable-width #t]))
(define msg-text3-forca (new message% [parent frame_forca] [label " ____"] [stretchable-width #t]))
(define msg-text4-forca (new message% [parent frame_forca] [label "|     |"] [stretchable-width #t]))
(define msg-text5-forca (new message% [parent frame_forca] [label "|"] [stretchable-width #t]))
(define msg-text6-forca (new message% [parent frame_forca] [label "|"] [stretchable-width #t]))
(define msg-text7-forca (new message% [parent frame_forca] [label "|"] [stretchable-width #t]))
(define msg-text8-forca (new message% [parent frame_forca] [label "|"] [stretchable-width #t]))
(define msg-text9-forca
  (new message% [parent frame_forca] [label "| _  _  _  _"] [stretchable-width #t]))
(define msg-text10-forca (new message% [parent frame_forca] [label " "] [stretchable-width #t]))
(define msg-text11-forca
  (new message% [parent frame_forca] [label "Letras já chutadas:"] [stretchable-width #t]))
;Caixa de texto para inserir a letra
(define text-box-forca (new text-field% [parent frame_forca] [label ""] [stretchable-width #t]))

;;Input --> Void
;;Define o botão forca, e captura o valor digitado no text-field
(define button-forca
  (new
   button%
   [parent frame_forca]
   [label "confirmar letra"] ;botão de confirmar letra
   [callback
    (lambda (button event)
      (send frame_forca show #f)
      (set!
       valor-digitado
       (send
        text-box-forca
        get-value)) ;isso daqui caputura o valor captado no text-field e armazena na variável valor-digitado
      (efetuou_chute valor-digitado) ;isso pose ser feito de maneira dinâmica
      )]))

;=============================================================
;INTERFACE MAIN
;=============================================================
(define frame_main (new frame% [label "Introdução"] [width 300] [height 200]))

;;Exibir a introdução do jogo
(define msg-text1-main
  (new message%
       [parent frame_main]
       [label "--==Essa história se passa em 1645 d.c==--"]
       [stretchable-width #t]))
(define msg-text2-main
  (new
   message%
   [parent frame_main]
   [label
    "O rei ficou maluco, ele está chateado com os niveis de educação do paíz e resolveu intervir da sua própria maneira. "]
   [stretchable-width #t]))
(define msg-text3-main
  (new
   message%
   [parent frame_main]
   [label
    "Todas os seus súditos serão submetidas a testes de lógica de programação em racket e de alfabetismo."]
   [stretchable-width #t]))
(define msg-text4-main
  (new message%
       [parent frame_main]
       [label
        "Nesse teste um súdito de cada vez deve: chutar letras para tentar acertar uma palavra."]
       [stretchable-width #t]))
(define msg-text5-main
  (new
   message%
   [parent frame_main]
   [label
    "Se a pessoa errar uma letra ela deve acertar outro problema de lógica para voltar a chutar letras."]
   [stretchable-width #t]))
(define msg-text6-main
  (new message%
       [parent frame_main]
       [label "Se a pessoa errar 6 vezes ela vai para a forca e perde."]
       [stretchable-width #t]))
(define msg-text7-main
  (new message%
       [parent frame_main]
       [label "A pessoa deve acertar 3 palavras para passar no teste."]
       [stretchable-width #t]))
(define msg-text8-main
  (new message%
       [parent frame_main]
       [label "As palavras são palavras usadas na linguagem Racket."]
       [stretchable-width #t]))

;;Input --> Void
;;Define o botão que chama a função forca
(define button1-main
  (new button%
       [parent frame_main]
       [label "Entendi! Vamos começar"]
       [callback
        (lambda (button event)
          (send frame_main show #f)
          (forca) ;;essa funcao inicia a forca
          )]))
;Inicializa a execução do jogo
(send frame_main show #t)
