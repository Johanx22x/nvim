" Archivo de sintaxis para la gramática de FIA

" Define el archivo de sintaxis para FIA
if exists("b:current_syntax")
  finish
endif

syntax case match

" Declaraciones
syntax region fiaDeclaraciones start="Campeonato" end="}" contains=fiaEscuderia,fiaFuncion

" Escudería
syntax region fiaEscuderia start="escuderia" end="}" contains=fiaMiembro,fiaRecurso,fiaAuto

" Miembro
syntax region fiaMiembro start="piloto\|director\|ingeniero" end=";"

" Recurso
syntax region fiaRecurso start="presupuesto\|capital" end=";"

" Auto
syntax region fiaAuto start="auto" end=";"

" Función
syntax region fiaFuncion start="orden" end="}" contains=fiaParametros,fiaRetorno

" Parámetros
syntax region fiaParametros start="(" end=")" contains=fiaTipoDato

" Retorno
syntax region fiaRetorno start="confirmacion" end=";"

" Instrucciones
syntax region fiaInstrucciones start="{" end="}" contains=fiaInstruccion,fiaCondiciones,fiaCiclos

" Instrucción
syntax region fiaInstruccion start="DeclaracionVariable\|Asignacion\|LlamadaFuncion" end=";" contains=fiaDeclaracionVariable,fiaAsignacion,fiaLlamadaFuncion

" Declaración de Variable
syntax match fiaDeclaracionVariable "TipoDato\|Asignacion"

" Asignación
syntax match fiaAsignacion "Identificador\|="

" Llamada de Función
syntax match fiaLlamadaFuncion "Identificador\|(" contains=fiaExpresion

" Condiciones
syntax region fiaCondiciones start="box" end="}" contains=fiaInstrucciones
syntax region fiaCondiciones start="out" end="}" contains=fiaInstrucciones

" Ciclos
syntax region fiaCiclos start="circuito" end="}" contains=fiaInstrucciones

" Valor
syntax match fiaValor "Entero\|Flotante\|Booleano\|Cadena"

" Tipo de Dato
syntax match fiaTipoDato "entero\|flotante\|booleano\|cadena"

" Identificador
syntax match fiaIdentificador "\<[a-zA-Z][0-9a-zA-Z_]*\>"

" Comentario
syntax match fiaComentario "//.*$" contains=@Spell
syntax region fiaComentario start="/\*" end="\*/" contains=@Spell

" Entero
syntax match fiaEntero "\<[0-9]*\>"

" Flotante
syntax match fiaFlotante "\<[0-9]*\.[0-9]*\>"

" Booleano
syntax match fiaBooleano "verdadero\|falso"

" Operador
syntax match fiaOperador "+\|-|\*|/|%|\^|&&|\|\||==|!=|<|>|<=|>=\>"

" Cadena
syntax match fiaCadena "'.*'\|\".*\""

" Enlaces
hi link fiaDeclaracionVariable Type
hi link fiaAsignacion Operator
hi link fiaLlamadaFuncion Function
hi link fiaCondiciones Conditional
hi link fiaCiclos Repeat
hi link fiaValor Constant
hi link fiaTipoDato Type
hi link fiaIdentificador Identifier
hi link fiaComentario Comment
hi link fiaEntero Number
hi link fiaFlotante Float
hi link fiaBooleano Boolean
hi link fiaOperador Operator
hi link fiaCadena String

let b:current_syntax = "fia"
