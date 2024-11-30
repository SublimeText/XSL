## SYNTAX TEST "Packages/XSL/XSL 3.1.sublime-syntax"

<!-- https://www.w3.org/TR/xpath-30/#id-dynamic-function-invocation -->

{ $f(2, 3) }
##^^^^^^^^^^ meta.interpolation.xsl
##^^ meta.function-call.identifier.xpath variable.other.xpath
##^ punctuation.definition.variable.xpath
##  ^^^^^^ meta.function-call.arguments.xpath
##  ^ punctuation.section.arguments.begin.xpath
##   ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##    ^ punctuation.separator.arguments.xpath
##      ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##       ^ punctuation.section.arguments.end.xpath
##         ^ punctuation.section.interpolation.end.xsl

{ $f[2]("Hi there") }
##^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^ meta.function-call.identifier.xpath
##^^ variable.other.xpath
##^ punctuation.definition.variable.xpath
##  ^^^ meta.predicate.xpath
##  ^ punctuation.section.predicate.begin.xpath
##   ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##    ^ punctuation.section.predicate.end.xpath
##     ^^^^^^^^^^^^ meta.function-call.arguments.xpath
##     ^ punctuation.section.arguments.begin.xpath
##      ^^^^^^^^^^ meta.string.xpath string.quoted.double.xpath
##      ^ punctuation.definition.string.begin.xpath
##               ^ punctuation.definition.string.end.xpath
##                ^ punctuation.section.arguments.end.xpath
##                  ^ punctuation.section.interpolation.end.xsl

{ $f()[2] }
##^^^^^^^^^ meta.interpolation.xsl
##^^ meta.function-call.identifier.xpath variable.other.xpath
##^ punctuation.definition.variable.xpath
##  ^^ meta.function-call.arguments.xpath
##  ^ punctuation.section.arguments.begin.xpath
##   ^ punctuation.section.arguments.end.xpath
##    ^^^ meta.predicate.xpath
##    ^ punctuation.section.predicate.begin.xpath
##     ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##      ^ punctuation.section.predicate.end.xpath
##        ^ punctuation.section.interpolation.end.xsl

{ $ns:f()[2] }
##^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^ meta.function-call.identifier.xpath
##^ variable.other.xpath punctuation.definition.variable.xpath
## ^^ variable.namespace.xpath
##   ^ punctuation.separator.namespace.xpath
##    ^ variable.other.xpath
##     ^^ meta.function-call.arguments.xpath
##     ^ punctuation.section.arguments.begin.xpath
##      ^ punctuation.section.arguments.end.xpath
##       ^^^ meta.predicate.xpath
##       ^ punctuation.section.predicate.begin.xpath
##        ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##         ^ punctuation.section.predicate.end.xpath
##           ^ punctuation.section.interpolation.end.xsl

{ $Q{uri}f()[2] }
##^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^^ meta.function-call.identifier.xpath
##^ variable.other.xpath punctuation.definition.variable.xpath
## ^^^^^^ variable.namespace.xpath meta.quoted.xpath
## ^^ punctuation.definition.quoted.begin.xpath
##      ^ punctuation.definition.quoted.end.xpath
##       ^ variable.other.xpath
##        ^^ meta.function-call.arguments.xpath
##        ^ punctuation.section.arguments.begin.xpath
##         ^ punctuation.section.arguments.end.xpath
##          ^^^ meta.predicate.xpath
##          ^ punctuation.section.predicate.begin.xpath
##           ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##            ^ punctuation.section.predicate.end.xpath
##              ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-30/#doc-xpath30-FunctionCall -->

{ func(arg) }
##^^^^^^^^^^^ meta.interpolation.xsl
##^^^^ meta.function-call.identifier.xpath variable.function.xpath
##    ^^^^^ meta.function-call.arguments.xpath
##    ^ punctuation.section.arguments.begin.xpath
##     ^^^ entity.name.tag.localname.xpath
##        ^ punctuation.section.arguments.end.xpath
##          ^ punctuation.section.interpolation.end.xsl

{ fn:func(arg) }
##^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^ meta.function-call.identifier.xpath
##^^ variable.namespace.xpath
##  ^ punctuation.separator.namespace.xpath
##   ^^^^ variable.function.xpath
##       ^^^^^ meta.function-call.arguments.xpath
##       ^ punctuation.section.arguments.begin.xpath
##        ^^^ entity.name.tag.localname.xpath
##           ^ punctuation.section.arguments.end.xpath
##             ^ punctuation.section.interpolation.end.xsl

{ Q{http://my-funcs}func(arg) }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.xpath
##^^^^^^^^^^^^^^^^^^ variable.namespace.xpath meta.quoted.xpath
##^^ punctuation.definition.quoted.begin.xpath
##       ^^ punctuation.separator.path.xpath
##                 ^ punctuation.definition.quoted.end.xpath
##                  ^^^^ variable.function.xpath
##                      ^^^^^ meta.function-call.arguments.xpath
##                      ^ punctuation.section.arguments.begin.xpath
##                       ^^^ entity.name.tag.localname.xpath
##                          ^ punctuation.section.arguments.end.xpath
##                            ^ punctuation.section.interpolation.end.xsl

{ // fn:func(arg) / op:op(arg) }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^ punctuation.separator.path.xpath
##   ^^^^^^^ meta.function-call.identifier.xpath
##   ^^ variable.namespace.xpath
##     ^ punctuation.separator.namespace.xpath
##      ^^^^ variable.function.xpath
##          ^^^^^ meta.function-call.arguments.xpath
##          ^ punctuation.section.arguments.begin.xpath
##           ^^^ entity.name.tag.localname.xpath
##              ^ punctuation.section.arguments.end.xpath
##                ^ punctuation.separator.path.xpath
##                  ^^^^^ meta.function-call.identifier.xpath
##                  ^^ variable.namespace.xpath
##                    ^ punctuation.separator.namespace.xpath
##                     ^^ variable.function.xpath
##                       ^^^^^ meta.function-call.arguments.xpath
##                       ^ punctuation.section.arguments.begin.xpath
##                        ^^^ entity.name.tag.localname.xpath
##                           ^ punctuation.section.arguments.end.xpath
##                             ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-30/#doc-xpath30-NamedFunctionRef -->

{ func#10 }
##^^^^^^^^^ meta.interpolation.xsl
##^^^^ variable.function.xpath
##    ^ punctuation.separator.arity.xpath
##     ^^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##        ^ punctuation.section.interpolation.end.xsl

{ fn:func#10 }
##^^^^^^^^^^^^ meta.interpolation.xsl
##^^ variable.namespace.xpath
##  ^ punctuation.separator.namespace.xpath
##   ^^^^ variable.function.xpath
##       ^ punctuation.separator.arity.xpath
##        ^^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##           ^ punctuation.section.interpolation.end.xsl

{ Q{http://my-funcs}func#10 }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^^^^^^^^^^^^ variable.namespace.xpath meta.quoted.xpath
##^^ punctuation.definition.quoted.begin.xpath
##       ^^ punctuation.separator.path.xpath
##                 ^ punctuation.definition.quoted.end.xpath
##                  ^^^^ variable.function.xpath
##                      ^ punctuation.separator.arity.xpath
##                       ^^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                          ^ punctuation.section.interpolation.end.xsl

{ // fn:func#2 / op:op#40 }
##^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^ punctuation.separator.path.xpath
##   ^^ variable.namespace.xpath
##     ^ punctuation.separator.namespace.xpath
##      ^^^^ variable.function.xpath
##          ^ punctuation.separator.arity.xpath
##           ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##             ^ punctuation.separator.path.xpath
##               ^^ variable.namespace.xpath
##                 ^ punctuation.separator.namespace.xpath
##                  ^^ variable.function.xpath
##                    ^ punctuation.separator.arity.xpath
##                     ^^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                        ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-30/#doc-xpath30-InlineFunctionExpr -->

{ $f = function() {} }
##^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^ variable.other.xpath
##^ punctuation.definition.variable.xpath
##   ^ keyword.operator.comparison.xpath
##     ^^^^^^^^ meta.function.xpath keyword.declaration.function.xpath
##             ^^ meta.function.parameters.xpath
##             ^ punctuation.section.parameters.begin.xpath
##              ^ punctuation.section.parameters.end.xpath
##               ^ meta.function.return-type.xpath
##                ^^ meta.function.body.xpath meta.block.xpath
##                ^ punctuation.section.block.begin.xpath
##                 ^ punctuation.section.block.end.xpath
##                   ^ punctuation.section.interpolation.end.xsl

{ $f = function ($arg1 as xs:node, $arg2 as xs:ID) as xs:boolean { element($arg1, $arg2) } }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^ variable.other.xpath
##^ punctuation.definition.variable.xpath
##   ^ keyword.operator.comparison.xpath
##     ^^^^^^^^^ meta.function.xpath
##     ^^^^^^^^ keyword.declaration.function.xpath
##              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.xpath
##              ^ punctuation.section.parameters.begin.xpath
##               ^^^^^ variable.parameter.xpath
##               ^ punctuation.definition.variable.xpath
##                     ^^ keyword.operator.type.as.xpath
##                        ^^ entity.name.tag.namespace.xpath
##                          ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                           ^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                               ^ punctuation.separator.parameters.xpath
##                                 ^^^^^ variable.parameter.xpath
##                                 ^ punctuation.definition.variable.xpath
##                                       ^^ keyword.operator.type.as.xpath
##                                          ^^ entity.name.tag.namespace.xpath
##                                            ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                             ^^ entity.name.tag.localname.xpath storage.type.xpath
##                                               ^ punctuation.section.parameters.end.xpath
##                                                 ^^^^^^^^^^^^^^ meta.function.return-type.xpath
##                                                 ^^ keyword.operator.type.as.xpath
##                                                    ^^ entity.name.tag.namespace.xpath
##                                                      ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                                       ^^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                                               ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function.body.xpath meta.block.xpath
##                                                               ^ punctuation.section.block.begin.xpath
##                                                                 ^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                                                                        ^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                                                                        ^ punctuation.section.arguments.begin.xpath
##                                                                         ^^^^^ variable.other.xpath
##                                                                         ^ punctuation.definition.variable.xpath
##                                                                              ^ punctuation.separator.arguments.xpath
##                                                                                ^^^^^ variable.other.xpath
##                                                                                ^ punctuation.definition.variable.xpath
##                                                                                     ^ punctuation.section.arguments.end.xpath
##                                                                                       ^ punctuation.section.block.end.xpath
##                                                                                         ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-30/#doc-xpath30-TypedFunctionTest -->

{ $f = function }
##^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^ variable.other.xpath
##^ punctuation.definition.variable.xpath
##   ^ keyword.operator.comparison.xpath
##     ^^^^^^^^ entity.name.tag.localname.xpath
##              ^ punctuation.section.interpolation.end.xsl

{ $f = function (*) as xs:boolean }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^ variable.other.xpath
##^ punctuation.definition.variable.xpath
##   ^ keyword.operator.comparison.xpath
##     ^^^^^^^^^ meta.function-call.identifier.xpath
##     ^^^^^^^^ support.function.kind-test.xpath
##              ^^^ meta.function-call.arguments.xpath
##              ^ punctuation.section.arguments.begin.xpath
##               ^ constant.other.wildcard.asterisk.xpath
##                ^ punctuation.section.arguments.end.xpath
##                  ^^ keyword.operator.type.as.xpath
##                     ^^ entity.name.tag.namespace.xpath
##                       ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                        ^^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                ^ punctuation.section.interpolation.end.xsl

{ $f = function (xs:node+, xs:ID?) as xs:boolean }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^ variable.other.xpath
##^ punctuation.definition.variable.xpath
##   ^ keyword.operator.comparison.xpath
##     ^^^^^^^^^ meta.function-call.identifier.xpath
##     ^^^^^^^^ support.function.kind-test.xpath
##              ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##              ^ punctuation.section.arguments.begin.xpath
##               ^^ entity.name.tag.namespace.xpath
##                 ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                  ^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                      ^ keyword.operator.quantifier.xpath
##                       ^ punctuation.separator.arguments.xpath
##                         ^^ entity.name.tag.namespace.xpath
##                           ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                            ^^ entity.name.tag.localname.xpath storage.type.xpath
##                              ^ keyword.operator.quantifier.xpath
##                               ^ punctuation.section.arguments.end.xpath
##                                 ^^ keyword.operator.type.as.xpath
##                                    ^^ entity.name.tag.namespace.xpath
##                                      ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                       ^^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                               ^ punctuation.section.interpolation.end.xsl

{ $f = element(node, function(xs:node+, xs:ID?) as xs:boolean) }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##     ^^^^^^^ meta.function-call.identifier.xpath - meta.function-call meta.function-call
##            ^^^^^^^ meta.function-call.arguments.xpath - meta.function-call meta.function-call
##                   ^^^^^^^^ meta.function-call.arguments.xpath meta.function-call.identifier.xpath
##                           ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath meta.function-call.arguments.xpath
##                                             ^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath - meta.function-call meta.function-call
##     ^^^^^^^ support.function.kind-test.xpath
##            ^ punctuation.section.arguments.begin.xpath
##             ^^^^ entity.name.tag.localname.xpath
##                 ^ punctuation.separator.arguments.xpath
##                   ^^^^^^^^ support.function.kind-test.xpath
##                           ^ punctuation.section.arguments.begin.xpath
##                            ^^ entity.name.tag.namespace.xpath
##                              ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                               ^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                   ^ keyword.operator.quantifier.xpath
##                                    ^ punctuation.separator.arguments.xpath
##                                      ^^ entity.name.tag.namespace.xpath
##                                        ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                         ^^ entity.name.tag.localname.xpath storage.type.xpath
##                                           ^ keyword.operator.quantifier.xpath
##                                            ^ punctuation.section.arguments.end.xpath
##                                              ^^ keyword.operator.type.as.xpath
##                                                 ^^ entity.name.tag.namespace.xpath
##                                                   ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                                    ^^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                                           ^ punctuation.section.arguments.end.xpath
##                                                             ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-30/#doc-xpath30-StringConcatExpr -->

{ "literal" || $string }
##^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^^^ meta.string.xpath string.quoted.double.xpath
##          ^^ keyword.operator.concat.xpath
##             ^^^^^^^ variable.other.xpath
##                     ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-30/#doc-xpath30-SimpleMapExpr -->

{ / string() ! concat('id-', .) }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^ punctuation.separator.path.xpath
##  ^^^^^^ meta.function-call.identifier.xpath variable.function.xpath
##        ^^ meta.function-call.arguments.xpath
##           ^ keyword.operator.mapping.xpath
##             ^^^^^^ meta.function-call.identifier.xpath variable.function.xpath
##                   ^^^^^^^^^^ meta.function-call.arguments.xpath
##                              ^ punctuation.section.interpolation.end.xsl

{ $docs ! ( //employee ) != false() }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^ variable.other.xpath
##^ punctuation.definition.variable.xpath
##      ^ keyword.operator.mapping.xpath
##        ^^^^^^^^^^^^^^ meta.group.xpath
##        ^ punctuation.section.group.begin.xpath
##          ^^ punctuation.separator.path.xpath
##            ^^^^^^^^ entity.name.tag.localname.xpath
##                     ^ punctuation.section.group.end.xpath
##                       ^^ keyword.operator.comparison.xpath
##                          ^^^^^ variable.function.xpath
##                               ^ punctuation.section.arguments.begin.xpath
##                                ^ punctuation.section.arguments.end.xpath
##                                  ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-30/#doc-xpath30-URIQualifiedName -->

{ Q{http://www.w3.org/2005/xpath-functions/math}pi }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.namespace.xpath meta.quoted.xpath
##^^ punctuation.definition.quoted.begin.xpath
##       ^^ punctuation.separator.path.xpath
##                   ^ punctuation.separator.path.xpath
##                        ^ punctuation.separator.path.xpath
##                                        ^ punctuation.separator.path.xpath
##                                             ^ punctuation.definition.quoted.end.xpath
##                                              ^^ entity.name.tag.localname.xpath
##                                                 ^ punctuation.section.interpolation.end.xsl

{ attribute::Q{http://www.w3.org/2005/xpath-functions/math}pi }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^^^ constant.language.axis.xpath
##         ^^ punctuation.accessor.double-colon.xpath
##           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.other.attribute-name.namespace.xpath meta.quoted.xpath
##           ^^ punctuation.definition.quoted.begin.xpath
##                  ^^ punctuation.separator.path.xpath
##                              ^ punctuation.separator.path.xpath
##                                   ^ punctuation.separator.path.xpath
##                                                   ^ punctuation.separator.path.xpath
##                                                        ^ punctuation.definition.quoted.end.xpath
##                                                         ^^ entity.other.attribute-name.localname.xpath
##                                                            ^ punctuation.section.interpolation.end.xsl

{ $Q{http://my-namespace}var instance of Q{http://www.w3.org/2001/XMLSchema}string }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^ punctuation.definition.variable.xpath
## ^^ punctuation.definition.quoted.begin.xpath
##   ^^^^^^^^^^^^^^^^^^^ variable.namespace.xpath
##                      ^ punctuation.definition.quoted.end.xpath
##                       ^^^ variable.other.xpath
##                           ^^^^^^^^^^^ keyword.operator.comparison.instanceof.xpath
##                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.namespace.xpath meta.quoted.xpath
##                                       ^^ punctuation.definition.quoted.begin.xpath
##                                                                         ^ punctuation.definition.quoted.end.xpath
##                                                                          ^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                                                                 ^ punctuation.section.interpolation.end.xsl

{ // element(Q{namespace}node, Q{http://www.w3.org/2001/XMLSchema}string) }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^ punctuation.separator.path.xpath
##   ^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##          ^ punctuation.section.arguments.begin.xpath
##           ^^^^^^^^^^^^ entity.name.tag.namespace.xpath meta.quoted.xpath
##           ^^ punctuation.definition.quoted.begin.xpath
##                      ^ punctuation.definition.quoted.end.xpath
##                       ^^^^ entity.name.tag.localname.xpath
##                           ^ punctuation.separator.arguments.xpath
##                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.tag.namespace.xpath meta.quoted.xpath
##                             ^^ punctuation.definition.quoted.begin.xpath
##                                    ^^ punctuation.separator.path.xpath
##                                                ^ punctuation.separator.path.xpath
##                                                     ^ punctuation.separator.path.xpath
##                                                               ^ punctuation.definition.quoted.end.xpath
##                                                                ^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                                                      ^ punctuation.section.arguments.end.xpath
##                                                                        ^ punctuation.section.interpolation.end.xsl

{ Q{http://www.w3.org/xsl-functions}my-function(Q{http://my-ns}node)  }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.xpath
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.namespace.xpath meta.quoted.xpath
##^^ punctuation.definition.quoted.begin.xpath
##       ^^ punctuation.separator.path.xpath
##                   ^ punctuation.separator.path.xpath
##                                 ^ punctuation.definition.quoted.end.xpath
##                                  ^^^^^^^^^^^ variable.function.xpath
##                                             ^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                                             ^ punctuation.section.arguments.begin.xpath
##                                              ^^^^^^^^^^^^^^^ entity.name.tag.namespace.xpath meta.quoted.xpath
##                                              ^^ punctuation.definition.quoted.begin.xpath
##                                                     ^^ punctuation.separator.path.xpath
##                                                            ^ punctuation.definition.quoted.end.xpath
##                                                             ^^^^ entity.name.tag.localname.xpath
##                                                                 ^ punctuation.section.arguments.end.xpath
##                                                                    ^ punctuation.section.interpolation.end.xsl


<!--
 XSL 3.1 / XPath 3.1 syntax tests
 -->

<!-- https://www.w3.org/TR/xpath-31/#doc-xpath31-SquareArrayConstructor -->

{ [] }
##^^^^ meta.interpolation.xsl
##^^ meta.sequence.array.xpath
##^ punctuation.section.sequence.begin.xpath
## ^ punctuation.section.sequence.end.xpath
##   ^ punctuation.section.interpolation.end.xsl

{ [2] }
##^^^^^ meta.interpolation.xsl
##^^^ meta.sequence.array.xpath
##^ punctuation.section.sequence.begin.xpath
## ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##  ^ punctuation.section.sequence.end.xpath
##    ^ punctuation.section.interpolation.end.xsl

{ [2, 3, 4, 'foo', $bar, [-1, 0, 5]] }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^^^^^^^^^^^^^^^^^ meta.sequence.array.xpath - meta.sequence meta.sequence
##                       ^^^^^^^^^^ meta.sequence.array.xpath meta.sequence.array.xpath
##                                 ^ meta.sequence.array.xpath - meta.sequence meta.sequence
##^ punctuation.section.sequence.begin.xpath
## ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##  ^ punctuation.separator.sequence.xpath
##    ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##     ^ punctuation.separator.sequence.xpath
##       ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##        ^ punctuation.separator.sequence.xpath
##          ^^^^^ meta.string.xpath string.quoted.single.xpath
##          ^ punctuation.definition.string.begin.xpath
##              ^ punctuation.definition.string.end.xpath
##               ^ punctuation.separator.sequence.xpath
##                 ^^^^ variable.other.xpath
##                 ^ punctuation.definition.variable.xpath
##                     ^ punctuation.separator.sequence.xpath
##                       ^ punctuation.section.sequence.begin.xpath
##                        ^^ meta.number.integer.decimal.xpath
##                        ^ keyword.operator.arithmetic.xpath
##                         ^ constant.numeric.value.xpath
##                          ^ punctuation.separator.sequence.xpath
##                            ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                             ^ punctuation.separator.sequence.xpath
##                               ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                ^ punctuation.section.sequence.end.xpath
##                                 ^ punctuation.section.sequence.end.xpath
##                                   ^ punctuation.section.interpolation.end.xsl

{ $a = [] }
##^^^^^^^^^ meta.interpolation.xsl
##^^ variable.other.xpath
##^ punctuation.definition.variable.xpath
##   ^ keyword.operator.comparison.xpath
##     ^^ meta.sequence.array.xpath
##     ^ punctuation.section.sequence.begin.xpath
##      ^ punctuation.section.sequence.end.xpath
##        ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-31/#doc-xpath31-CurlyArrayConstructor -->

{ array {2, 3, 4, array {5, 7, 8}} }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^ - meta.sequence
##      ^^^^^^^^^^^^^^^^ meta.sequence.array.xpath - meta.sequence meta.sequence
##                      ^^^^^^^^^ meta.sequence.array.xpath meta.sequence.array.xpath
##                               ^ meta.sequence.array.xpath - meta.sequence meta.sequence
##                                ^^ - meta.sequence
##^^^^^ keyword.declaration.array.xpath
##      ^ punctuation.section.sequence.begin.xpath
##       ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##        ^ punctuation.separator.sequence.xpath
##          ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##           ^ punctuation.separator.sequence.xpath
##             ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##              ^ punctuation.separator.sequence.xpath
##                ^^^^^ keyword.declaration.array.xpath
##                      ^ punctuation.section.sequence.begin.xpath
##                       ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                        ^ punctuation.separator.sequence.xpath
##                          ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                           ^ punctuation.separator.sequence.xpath
##                             ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                              ^ punctuation.section.mapping.end.xpath
##                               ^ punctuation.section.mapping.end.xpath
##                                 ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-31/#doc-xpath31-MapConstructor -->

{ map {} }
##^^^^^^^ meta.interpolation.xsl
##^^^ keyword.declaration.struct.xpath
##    ^^ meta.mapping.xpath
##    ^ punctuation.section.mapping.begin.xpath
##     ^ punctuation.section.mapping.end.xpath
##       ^ punctuation.section.interpolation.end.xsl

{ map{'indent':true(), 'map': map {"path", /value}, 'array': array {1, 2, 3}} }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^ keyword.declaration.struct.xpath
##   ^ meta.mapping.xpath punctuation.section.mapping.begin.xpath
##    ^^^^^^^^ meta.mapping.key.xpath meta.string.xpath string.quoted.single.xpath
##    ^ punctuation.definition.string.begin.xpath
##           ^ punctuation.definition.string.end.xpath
##            ^ meta.mapping.xpath punctuation.separator.key-value.xpath
##             ^^^^^^ meta.mapping.value.xpath
##             ^^^^ meta.function-call.identifier.xpath variable.function.xpath
##                 ^^ meta.function-call.arguments.xpath
##                 ^ punctuation.section.arguments.begin.xpath
##                  ^ punctuation.section.arguments.end.xpath
##                   ^^ meta.mapping.xpath
##                   ^ punctuation.separator.sequence.xpath
##                     ^^^^^ meta.mapping.key.xpath meta.string.xpath string.quoted.single.xpath
##                     ^ punctuation.definition.string.begin.xpath
##                         ^ punctuation.definition.string.end.xpath
##                          ^ meta.mapping.xpath punctuation.separator.key-value.xpath
##                           ^^^^^^^^^^^^^^^^^^^^^ meta.mapping.value.xpath
##                            ^^^ keyword.declaration.struct.xpath
##                                ^ meta.mapping.xpath punctuation.section.mapping.begin.xpath
##                                 ^^^^^^ meta.mapping.key.xpath meta.string.xpath string.quoted.double.xpath
##                                 ^ punctuation.definition.string.begin.xpath
##                                      ^ punctuation.definition.string.end.xpath
##                                       ^^ meta.mapping.xpath
##                                       ^ punctuation.separator.sequence.xpath
##                                         ^^^^^^ meta.mapping.key.xpath
##                                         ^ punctuation.separator.path.xpath
##                                          ^^^^^ entity.name.tag.localname.xpath
##                                               ^ meta.mapping.xpath punctuation.section.mapping.end.xpath
##                                                ^^ meta.mapping.xpath
##                                                ^ punctuation.separator.sequence.xpath
##                                                  ^^^^^^^ meta.mapping.key.xpath meta.string.xpath string.quoted.single.xpath
##                                                  ^ punctuation.definition.string.begin.xpath
##                                                        ^ punctuation.definition.string.end.xpath
##                                                         ^ meta.mapping.xpath punctuation.separator.key-value.xpath
##                                                          ^^^^^^^^^^^^^^^^ meta.mapping.value.xpath
##                                                           ^^^^^ keyword.declaration.array.xpath
##                                                                 ^^^^^^^^^ meta.sequence.array.xpath
##                                                                 ^ punctuation.section.sequence.begin.xpath
##                                                                  ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                                                   ^ punctuation.separator.sequence.xpath
##                                                                     ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                                                      ^ punctuation.separator.sequence.xpath
##                                                                        ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                                                         ^ punctuation.section.mapping.end.xpath
##                                                                          ^ meta.mapping.xpath punctuation.section.mapping.end.xpath
##                                                                            ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-31/#doc-xpath31-AnyMapTest -->

{ $M instance of map(*) }
##               ^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                  ^^^ meta.function-call.arguments.xpath
##                  ^ punctuation.section.arguments.begin.xpath
##                   ^ constant.other.wildcard.asterisk.xpath
##                    ^ punctuation.section.arguments.end.xpath

<!-- https://www.w3.org/TR/xpath-31/#doc-xpath31-MapTest -->

{ $M instance of map(xs:integer, xs:string) }
##               ^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                  ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                  ^ punctuation.section.arguments.begin.xpath
##                   ^^ entity.name.tag.namespace.xpath
##                     ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                      ^^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                             ^ punctuation.separator.arguments.xpath
##                               ^^ entity.name.tag.namespace.xpath
##                                 ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                  ^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                        ^ punctuation.section.arguments.end.xpath
##                                          ^ punctuation.section.interpolation.end.xsl

{ $M instance of map(xs:decimal, xs:anyAtomicType) }
##               ^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                  ^ punctuation.section.arguments.begin.xpath
##                   ^^ entity.name.tag.namespace.xpath
##                     ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                      ^^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                             ^ punctuation.separator.arguments.xpath
##                               ^^ entity.name.tag.namespace.xpath
##                                 ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                  ^^^^^^^^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                               ^ punctuation.section.arguments.end.xpath
##                                                 ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-31/#doc-xpath31-ArrayTest -->

{ [ 1, 2 ] instance of array(*) }
##                     ^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                          ^^^ meta.function-call.arguments.xpath
##                          ^ punctuation.section.arguments.begin.xpath
##                           ^ constant.other.wildcard.asterisk.xpath
##                            ^ punctuation.section.arguments.end.xpath
##                              ^ punctuation.section.interpolation.end.xsl

{ [] instance of array(xs:string) }
##               ^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                    ^^^^^^^^^^^ meta.function-call.arguments.xpath
##                    ^ punctuation.section.arguments.begin.xpath
##                     ^^ entity.name.tag.namespace.xpath
##                       ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                        ^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                              ^ punctuation.section.arguments.end.xpath
##                                ^ punctuation.section.interpolation.end.xsl

{ [(1,2),(3,4)] instance of array(xs:integer+) }
##                          ^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                               ^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                               ^ punctuation.section.arguments.begin.xpath
##                                ^^ entity.name.tag.namespace.xpath
##                                  ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                   ^^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                          ^ keyword.operator.quantifier.xpath
##                                           ^ punctuation.section.arguments.end.xpath
##                                             ^ punctuation.section.interpolation.end.xsl
