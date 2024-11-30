## SYNTAX TEST "Packages/XSL/XSL 2.0.sublime-syntax"

<!-- Comment Tests -->

    { (: comment :) }
##  ^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##  ^ punctuation.section.interpolation.begin.xsl
##   ^^^^^^^^^^^^^^^ source.xpath.embedded.xsl
##    ^^^^^^^^^^^^^ comment.block.xpath
##    ^^ punctuation.definition.comment.begin.xpath
##               ^^ punctuation.definition.comment.end.xpath
##                  ^ punctuation.section.interpolation.end.xsl

<xsl:value-of select="(: comment :)" />
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl
##                   ^ meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^ meta.string.xml source.xpath.embedded.xsl comment.block.xpath
##                                 ^ meta.string.xml - source.xpath

<xsl:value-of select='(: comment :)' />
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl
##                   ^ meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^ meta.string.xml source.xpath.embedded.xsl comment.block.xpath
##                                 ^ meta.string.xml - source.xpath

<!-- Interpolation Tests -->

<!-- The {$title} -->
##^^^^^^^^^^^^^^^^^^^ comment.block.xml
##^^ punctuation.definition.comment.begin.xml
##       ^^^^^^^^ meta.interpolation.xsl
##       ^ punctuation.section.interpolation.begin.xsl
##        ^^^^^^ source.xpath.embedded.xsl
##        ^ punctuation.definition.variable.xpath
##         ^^^^^ variable.other.xpath
##              ^ punctuation.section.interpolation.end.xsl
##                ^^^ punctuation.definition.comment.end.xml

<p class="{$classname}">{$content}</p>
##       ^ meta.tag.xml meta.string.xml string.quoted.double.xml punctuation.definition.string.begin.xml
##        ^ meta.tag.xml meta.string.xml meta.interpolation.xsl - source.xpath - string
##         ^^^^^^^^^^ meta.tag.xml meta.string.xml meta.interpolation.xsl source.xpath - string
##                   ^ meta.tag.xml meta.string.xml meta.interpolation.xsl - source.xpath - string
##                    ^ meta.tag.xml meta.string.xml string.quoted.double.xml punctuation.definition.string.end.xml
##        ^ punctuation.section.interpolation.begin.xsl
##         ^ punctuation.definition.variable.xpath
##          ^^^^^^^^^ variable.other.xpath
##                   ^ punctuation.section.interpolation.end.xsl
##                      ^^^^^^^^^^ meta.interpolation.xsl
##                      ^ punctuation.section.interpolation.begin.xsl - source
##                       ^ punctuation.definition.variable.xpath
##                        ^^^^^^^ source.xpath variable.other.xpath
##                               ^ punctuation.section.interpolation.end.xsl - source

<![CDATA[The {$content}!]]>
##^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.sgml.cdata.xml
##^ punctuation.definition.tag.begin.xml
## ^^^^^ keyword.declaration.cdata.xml
##      ^ punctuation.definition.tag.begin.xml, punctuation.definition.tag.begin.content.xml
##       ^^^^^^^^^^^^^^^ meta.string.xml
##       ^^^^ string.unquoted.cdata.xml
##           ^^^^^^^^^^ meta.interpolation.xsl
##           ^ punctuation.section.interpolation.begin.xsl
##            ^^^^^^^^ source.xpath.embedded.xsl
##            ^ punctuation.definition.variable.xpath
##             ^^^^^^^ variable.other.xpath
##                    ^ punctuation.section.interpolation.end.xsl
##                     ^ string.unquoted.cdata.xml
##                      ^^^ punctuation.definition.tag.end.xml

<!-- Literal Tests -->

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-DoubleLiteral -->

{ .5e1 + .5e+1 + .5e-1 + 5e1 + 5e+1 + 5e-1 + 5.e1 + 5.e+1 + 5.e-1 + 5.5e1 + 5.5e+1 + 5.5e-1 }
##^^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##^ punctuation.separator.decimal.xpath
##     ^ keyword.operator.arithmetic.xpath
##       ^^^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##       ^ punctuation.separator.decimal.xpath
##             ^ keyword.operator.arithmetic.xpath
##               ^^^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##               ^ punctuation.separator.decimal.xpath
##                     ^ keyword.operator.arithmetic.xpath
##                       ^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##                           ^ keyword.operator.arithmetic.xpath
##                             ^^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##                                  ^ keyword.operator.arithmetic.xpath
##                                    ^^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##                                         ^ keyword.operator.arithmetic.xpath
##                                           ^^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##                                            ^ punctuation.separator.decimal.xpath
##                                                ^ keyword.operator.arithmetic.xpath
##                                                  ^^^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##                                                   ^ punctuation.separator.decimal.xpath
##                                                        ^ keyword.operator.arithmetic.xpath
##                                                          ^^^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##                                                           ^ punctuation.separator.decimal.xpath
##                                                                ^ keyword.operator.arithmetic.xpath
##                                                                  ^^^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##                                                                   ^ punctuation.separator.decimal.xpath
##                                                                        ^ keyword.operator.arithmetic.xpath
##                                                                          ^^^^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##                                                                           ^ punctuation.separator.decimal.xpath
##                                                                                 ^ keyword.operator.arithmetic.xpath
##                                                                                   ^^^^^^ meta.number.double.decimal.xpath constant.numeric.value.xpath
##                                                                                    ^ punctuation.separator.decimal.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-DecimalLiteral -->

{ 5 + .5 + 5. + 5.5 }
##^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##  ^ keyword.operator.arithmetic.xpath
##    ^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##    ^ punctuation.separator.decimal.xpath
##       ^ keyword.operator.arithmetic.xpath
##         ^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##          ^ punctuation.separator.decimal.xpath
##            ^ keyword.operator.arithmetic.xpath
##              ^^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##               ^ punctuation.separator.decimal.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-StringLiteral -->

{ "st""ri''ng" or 'st""ri''ng' }
##^^^^^^^^^^^^ meta.string.xpath string.quoted.double.xpath
##^ punctuation.definition.string.begin.xpath
##   ^^ constant.character.escape.xpath
##       ^^ - constant
##           ^ punctuation.definition.string.end.xpath
##            ^^^^ - string
##                ^^^^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                ^ punctuation.definition.string.begin.xpath
##                   ^^ - constant
##                       ^^ constant.character.escape.xpath
##                           ^ punctuation.definition.string.end.xpath

<!-- Axis Name Tests -->
<!-- https://www.w3.org/TR/xpath20/#axes -->

<xsl:value-of select="ancestor::" />
##                    ^^^^^^^^ constant.language.axis.xpath
<xsl:value-of select="ancestor-or-self::" />
##                    ^^^^^^^^^^^^^^^^ constant.language.axis.xpath
<xsl:value-of select="attribute::" />
##                    ^^^^^^^^^ constant.language.axis.xpath
<xsl:value-of select="child::" />
##                    ^^^^^ constant.language.axis.xpath
<xsl:value-of select="descendant::" />
##                    ^^^^^^^^^^ constant.language.axis.xpath
<xsl:value-of select="descendant-or-self::" />
##                    ^^^^^^^^^^^^^^^^^^ constant.language.axis.xpath
<xsl:value-of select="following::" />
##                    ^^^^^^^^^ constant.language.axis.xpath
<xsl:value-of select="following-sibling::" />
##                    ^^^^^^^^^^^^^^^^^ constant.language.axis.xpath
<xsl:value-of select="namespace::" />
##                    ^^^^^^^^^ constant.language.axis.xpath
<xsl:value-of select="parent::" />
##                    ^^^^^^ constant.language.axis.xpath
<xsl:value-of select="preceding::" />
##                    ^^^^^^^^^ constant.language.axis.xpath
<xsl:value-of select="preceding-sibling::" />
##                    ^^^^^^^^^^^^^^^^^ constant.language.axis.xpath
<xsl:value-of select="self::" />
##                    ^^^^ constant.language.axis.xpath
<xsl:value-of select="unsupported::" />
##                    ^^^^^^^^^^^ invalid.illegal.axis.xpath

<!-- https://www.w3.org/TR/xpath20/#doc-xpath-Wildcard -->

<xsl:value-of select="//* : name" />
##                      ^ entity.name.tag.namespace.xpath constant.other.wildcard.asterisk.xpath
##                       ^^^ entity.name.tag.xpath
##                        ^ punctuation.separator.namespace.xpath
##                          ^^^^ entity.name.tag.localname.xpath

<xsl:value-of select="//*" />
##                      ^ entity.name.tag.localname.xpath constant.other.wildcard.asterisk.xpath

<xsl:value-of select="//ns : *" />
##                      ^^ entity.name.tag.namespace.xpath
##                        ^^^ entity.name.tag.xpath
##                         ^ punctuation.separator.namespace.xpath
##                           ^ entity.name.tag.localname.xpath constant.other.wildcard.asterisk.xpath

<!-- Operator Tests -->

<xsl:value-of select="and and and or or" />
##                    ^^^ entity.name.tag.localname.xpath
##                        ^^^ keyword.operator.logical.xpath
##                            ^^^ entity.name.tag.localname.xpath
##                                ^^ keyword.operator.logical.xpath
##                                   ^^ entity.name.tag.localname.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-MultiplicativeExpr -->

{ $a div $b }
## ^ variable.other.xpath
##   ^^^ keyword.operator.arithmetic.xpath
##        ^ variable.other.xpath
##          ^ punctuation.section.interpolation.end.xsl

{ $a idiv $b }
## ^ variable.other.xpath
##   ^^^^ keyword.operator.arithmetic.xpath
##         ^ variable.other.xpath
##           ^ punctuation.section.interpolation.end.xsl

{ $a mod $b }
## ^ variable.other.xpath
##   ^^^ keyword.operator.arithmetic.xpath
##        ^ variable.other.xpath
##          ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-NodeComp -->

{ node1 is node2 }
##^^^^^ entity.name.tag.localname.xpath
##      ^^ keyword.operator.comparison.xpath
##         ^^^^^ entity.name.tag.localname.xpath

{ node1 << node2 }
##^^^^^ entity.name.tag.localname.xpath
##      ^^ keyword.operator.comparison.xpath
##         ^^^^^ entity.name.tag.localname.xpath

{ node1 >> node2 }
##^^^^^ entity.name.tag.localname.xpath
##      ^^ keyword.operator.comparison.xpath
##         ^^^^^ entity.name.tag.localname.xpath

{ node1 &lt;&lt; node2 }
##^^^^^ entity.name.tag.localname.xpath
##      ^^^^^^^^ constant.character.entity.named.xml
##               ^^^^^ entity.name.tag.localname.xpath

{ node1 &gt;&gt; node2 }
##^^^^^ entity.name.tag.localname.xpath
##      ^^^^^^^^ constant.character.entity.named.xml
##               ^^^^^ entity.name.tag.localname.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-GeneralComp -->

<xsl:value-of select="foo < bar <= baz != buz = baz >= bar > foo" />
##                    ^^^ entity.name.tag.localname.xpath
##                        ^ keyword.operator.comparison.xpath
##                          ^^^ entity.name.tag.localname.xpath
##                              ^^ keyword.operator.comparison.xpath
##                                 ^^^ entity.name.tag.localname.xpath
##                                     ^^ keyword.operator.comparison.xpath
##                                        ^^^ entity.name.tag.localname.xpath
##                                            ^ keyword.operator.comparison.xpath
##                                              ^^^ entity.name.tag.localname.xpath
##                                                  ^^ keyword.operator.comparison.xpath
##                                                     ^^^ entity.name.tag.localname.xpath
##                                                         ^ keyword.operator.comparison.xpath
##                                                           ^^^ entity.name.tag.localname.xpath

<xsl:value-of select="foo &lt; bar &lt;= baz &amp;= buz = baz &gt;= bar &gt; foo" />
##                    ^^^ entity.name.tag.localname.xpath
##                        ^^^^ keyword.operator.comparison.xpath
##                             ^^^ entity.name.tag.localname.xpath
##                                 ^^^^^ keyword.operator.comparison.xpath
##                                       ^^^ entity.name.tag.localname.xpath
##                                           ^^^^^^ keyword.operator.comparison.xpath
##                                                  ^^^ entity.name.tag.localname.xpath
##                                                      ^ keyword.operator.comparison.xpath
##                                                        ^^^ entity.name.tag.localname.xpath
##                                                            ^^^^^ keyword.operator.comparison.xpath
##                                                                  ^^^ entity.name.tag.localname.xpath
##                                                                      ^^^^ keyword.operator.comparison.xpath
##                                                                           ^^^ entity.name.tag.localname.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-ValueComp -->

<xsl:value-of select="eq eq ne ne lt lt le le gt gt ge ge" />
##                    ^^ entity.name.tag.localname.xpath
##                       ^^ keyword.operator.comparison.xpath
##                          ^^ entity.name.tag.localname.xpath
##                             ^^ keyword.operator.comparison.xpath
##                                ^^ entity.name.tag.localname.xpath
##                                   ^^ keyword.operator.comparison.xpath
##                                      ^^ entity.name.tag.localname.xpath
##                                         ^^ keyword.operator.comparison.xpath
##                                            ^^ entity.name.tag.localname.xpath
##                                               ^^ keyword.operator.comparison.xpath
##                                                  ^^ entity.name.tag.localname.xpath
##                                                     ^^ keyword.operator.comparison.xpath

<!-- type definitions -->

<xsl:param name="set" as="xs:integer"/>
##                    ^^ entity.other.attribute-name.localname.xml
##                      ^ punctuation.separator.key-value.xml
##                       ^ meta.string.xml string.quoted.double.xml punctuation.definition.string.begin.xml
##                        ^^^^^^^^^^ meta.string.xml source.xpath.embedded.xsl
##                        ^^ entity.name.tag.namespace.xpath
##                          ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                           ^^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                  ^ meta.string.xml string.quoted.double.xml punctuation.definition.string.begin.xml

{ fn:string($arg as item()?) as xs:string }
##^^^^^^^^^ meta.function-call.identifier.xpath
##^^ variable.namespace.xpath
##  ^ punctuation.separator.namespace.xpath
##   ^^^^^^ variable.function.xpath
##         ^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##         ^ punctuation.section.arguments.begin.xpath
##          ^^^^ variable.other.xpath
##          ^ punctuation.definition.variable.xpath
##               ^^ keyword.operator.type.as.xpath
##                  ^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                      ^^ meta.function-call.arguments.xpath
##                      ^ punctuation.section.arguments.begin.xpath
##                       ^ punctuation.section.arguments.end.xpath
##                        ^ keyword.operator.quantifier.xpath
##                         ^ punctuation.section.arguments.end.xpath
##                           ^^ keyword.operator.type.as.xpath
##                              ^^ entity.name.tag.namespace.xpath
##                                ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                 ^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                        ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-CastableExpr -->

{ $x castable as hatsize? }
##   ^^^^^^^^^^^ keyword.operator.type.as.xpath
##               ^^^^^^^ storage.type.xpath
##                      ^ keyword.operator.nullable.xpath
##                        ^ punctuation.section.interpolation.end.xsl

{ $x castable as IQ }
##   ^^^^^^^^^^^ keyword.operator.type.as.xpath
##               ^^ storage.type.xpath
##                  ^ punctuation.section.interpolation.end.xsl

{ $x castable as xs:string }
##   ^^^^^^^^^^^ keyword.operator.type.as.xpath
##               ^^ entity.name.tag.namespace.xpath
##                 ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                  ^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                         ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-CastExpr -->

{ $x cast as hatsize? }
##   ^^^^^^^ keyword.operator.type.as.xpath
##           ^^^^^^^ storage.type.xpath
##                  ^ keyword.operator.nullable.xpath
##                    ^ punctuation.section.interpolation.end.xsl

{ $x cast as IQ }
##   ^^^^^^^ keyword.operator.type.as.xpath
##           ^^ storage.type.xpath
##              ^ punctuation.section.interpolation.end.xsl

{ $x cast as xs:string }
##   ^^^^^^^ keyword.operator.type.as.xpath
##           ^^ entity.name.tag.namespace.xpath
##             ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##              ^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                     ^ punctuation.section.interpolation.end.xsl

<!--  https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-InstanceofExpr -->

{ $x instance of attribute() }
##   ^^^^^^^^^^^ keyword.operator.comparison.instanceof.xpath
##               ^^^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                        ^^ meta.function-call.arguments.xpath
##                        ^ punctuation.section.arguments.begin.xpath
##                         ^ punctuation.section.arguments.end.xpath
##                           ^ punctuation.section.interpolation.end.xsl

{ $x instance of element() }
##   ^^^^^^^^^^^ keyword.operator.comparison.instanceof.xpath
##               ^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                      ^^ meta.function-call.arguments.xpath
##                      ^ punctuation.section.arguments.begin.xpath
##                       ^ punctuation.section.arguments.end.xpath
##                         ^ punctuation.section.interpolation.end.xsl

{ $x instance of empty-sequence() }
##   ^^^^^^^^^^^ keyword.operator.comparison.instanceof.xpath
##               ^^^^^^^^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                             ^^ meta.function-call.arguments.xpath
##                             ^ punctuation.section.arguments.begin.xpath
##                              ^ punctuation.section.arguments.end.xpath
##                                ^ punctuation.section.interpolation.end.xsl

{ $x instance of comment() }
##   ^^^^^^^^^^^ keyword.operator.comparison.instanceof.xpath
##               ^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                      ^^ meta.function-call.arguments.xpath
##                      ^ punctuation.section.arguments.begin.xpath
##                       ^ punctuation.section.arguments.end.xpath
##                         ^ punctuation.section.interpolation.end.xsl

{ $x instance of item() }
##   ^^^^^^^^^^^ keyword.operator.comparison.instanceof.xpath
##               ^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                   ^^ meta.function-call.arguments.xpath
##                   ^ punctuation.section.arguments.begin.xpath
##                    ^ punctuation.section.arguments.end.xpath
##                      ^ punctuation.section.interpolation.end.xsl

{ $x instance of node() }
##   ^^^^^^^^^^^ keyword.operator.comparison.instanceof.xpath
##               ^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                   ^^ meta.function-call.arguments.xpath
##                   ^ punctuation.section.arguments.begin.xpath
##                    ^ punctuation.section.arguments.end.xpath
##                      ^ punctuation.section.interpolation.end.xsl

{ $x instance of text() }
##   ^^^^^^^^^^^ keyword.operator.comparison.instanceof.xpath
##               ^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                   ^^ meta.function-call.arguments.xpath
##                   ^ punctuation.section.arguments.begin.xpath
##                    ^ punctuation.section.arguments.end.xpath
##                      ^ punctuation.section.interpolation.end.xsl

{ $x instance of processing-instruction() }
##   ^^^^^^^^^^^ keyword.operator.comparison.instanceof.xpath
##               ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                                     ^^ meta.function-call.arguments.xpath
##                                     ^ punctuation.section.arguments.begin.xpath
##                                      ^ punctuation.section.arguments.end.xpath
##                                        ^ punctuation.section.interpolation.end.xsl

{ (5, 6) instance of xs:integer+ }
##       ^^^^^^^^^^^ keyword.operator.comparison.instanceof.xpath
##                   ^^ entity.name.tag.namespace.xpath
##                     ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                      ^^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                             ^ keyword.operator.quantifier.xpath
##                               ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-IntersectExceptExpr -->

{ except except except }
##^^^^^^ entity.name.tag.localname.xpath
##       ^^^^^^ keyword.operator.except.xpath
##              ^^^^^^ entity.name.tag.localname.xpath

{ intersect intersect intersect }
##^^^^^^^^^ entity.name.tag.localname.xpath
##          ^^^^^^^^^ keyword.operator.intersect.xpath
##                    ^^^^^^^^^ entity.name.tag.localname.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-TreatExpr -->

{ $x treat as element(*, USAddress) }
##   ^^^^^^^^ keyword.operator.type.as.xpath
##            ^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                   ^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                   ^ punctuation.section.arguments.begin.xpath
##                    ^ entity.name.tag.localname.xpath constant.other.wildcard.asterisk.xpath
##                     ^ punctuation.separator.arguments.xpath
##                       ^^^^^^^^^ storage.type.xpath
##                                ^ punctuation.section.arguments.end.xpath
##                                  ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-RangeExpr -->

{ $a + 5 to 10 }
##^^ variable.other.xpath
##^ punctuation.definition.variable.xpath
##   ^ keyword.operator.arithmetic.xpath
##     ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##       ^^ keyword.operator.range.xpath
##          ^^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##             ^ punctuation.section.interpolation.end.xsl

{ to to to }
##^^ entity.name.tag.localname.xpath
##   ^^ keyword.operator.range.xpath
##      ^^ entity.name.tag.localname.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-UnionExpr -->

{ union union union | union }
##^^^^^ entity.name.tag.localname.xpath
##      ^^^^^ keyword.operator.union.xpath
##            ^^^^^ entity.name.tag.localname.xpath
##                  ^ keyword.operator.union.xpath
##                    ^^^^^ entity.name.tag.localname.xpath

{ -/foo | --/foo | +/bar union ++/bar }
##^ keyword.operator.arithmetic.xpath
## ^ punctuation.separator.path.xpath
##  ^^^ entity.name.tag.localname.xpath
##      ^ keyword.operator.union.xpath
##        ^^ keyword.operator.arithmetic.xpath
##          ^ punctuation.separator.path.xpath
##           ^^^ entity.name.tag.localname.xpath
##               ^ keyword.operator.union.xpath
##                 ^ keyword.operator.arithmetic.xpath
##                  ^ punctuation.separator.path.xpath
##                   ^^^ entity.name.tag.localname.xpath
##                       ^^^^^ keyword.operator.union.xpath
##                             ^^ keyword.operator.arithmetic.xpath
##                               ^ punctuation.separator.path.xpath
##                                ^^^ entity.name.tag.localname.xpath

<!-- Function Call Tests -->

<xsl:value-of select="fun(?)" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.identifier.xpath
##                       ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.arguments.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                       ^ punctuation.section.arguments.begin.xpath
##                        ^ constant.other.wildcard.questionmark.xpath
##                         ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="fun(?,?,foo ?,)" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.identifier.xpath
##                       ^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.arguments.xpath
##                                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                       ^ punctuation.section.arguments.begin.xpath
##                        ^ constant.other.wildcard.questionmark.xpath
##                         ^ punctuation.separator.arguments.xpath
##                          ^ constant.other.wildcard.questionmark.xpath
##                           ^ punctuation.separator.arguments.xpath
##                            ^^^ entity.name.tag.localname.xpath
##                                ^ constant.other.wildcard.questionmark.xpath
##                                 ^ punctuation.separator.arguments.xpath
##                                  ^ punctuation.section.arguments.end.xpath

<!-- Kind Tests -->

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-AnyKindTest -->

<xsl:value-of select="node()" />
##                    ^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                        ^^ meta.function-call.arguments.xpath
##                        ^ punctuation.section.arguments.begin.xpath
##                         ^ punctuation.section.arguments.end.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-DocumentTest -->

<xsl:value-of select="document-node(element(*, ns:type?))" />
##                    ^^^^^^^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                                 ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                                 ^ punctuation.section.arguments.begin.xpath
##                                  ^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                                         ^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                                         ^ punctuation.section.arguments.begin.xpath
##                                          ^ constant.other.wildcard.asterisk.xpath
##                                           ^ punctuation.separator.arguments.xpath
##                                             ^^ entity.name.tag.namespace.xpath
##                                               ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                                ^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                                    ^ keyword.operator.quantifier.xpath
##                                                     ^ punctuation.section.arguments.end.xpath
##                                                      ^ punctuation.section.arguments.end.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-TextTest -->

<xsl:value-of select="text()" />
##                    ^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                        ^^ meta.function-call.arguments.xpath
##                        ^ punctuation.section.arguments.begin.xpath
##                         ^ punctuation.section.arguments.end.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-CommentTest -->

<xsl:value-of select="comment()" />
##                    ^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                           ^^ meta.function-call.arguments.xpath
##                           ^ punctuation.section.arguments.begin.xpath
##                            ^ punctuation.section.arguments.end.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-PITest -->

<xsl:value-of select="processing-instruction(my:node)" />
##                    ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                                          ^^^^^^^^^ meta.function-call.arguments.xpath
##                                          ^ punctuation.section.arguments.begin.xpath
##                                           ^^ entity.name.tag.namespace.xpath
##                                             ^ punctuation.separator.namespace.xpath
##                                              ^^^^ entity.name.tag.localname.xpath
##                                                  ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="processing-instruction('string')" />
##                    ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                                          ^^^^^^^^^^ meta.function-call.arguments.xpath
##                                          ^ punctuation.section.arguments.begin.xpath
##                                           ^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                           ^ punctuation.definition.string.begin.xpath
##                                                  ^ punctuation.definition.string.end.xpath
##                                                   ^ punctuation.section.arguments.end.xpath
##                                                    ^ string.quoted.double.xml punctuation.definition.string.end.xml

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-AttributeTest -->

<xsl:value-of select="attribute (*, xs:integer?)" />
##                    ^^^^^^^^^^ meta.function-call.identifier.xpath
##                              ^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                                              ^^^^ - meta.function-call
##                    ^^^^^^^^^ support.function.kind-test.xpath
##                              ^ punctuation.section.arguments.begin.xpath
##                               ^ constant.other.wildcard.asterisk.xpath
##                                ^ punctuation.separator.arguments.xpath
##                                  ^^ entity.name.tag.namespace.xpath
##                                    ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                     ^^^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                            ^ keyword.operator.quantifier.xpath
##                                             ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="attribute (ns:name, ns:type1?)" />
##                    ^^^^^^^^^^ meta.function-call.identifier.xpath
##                              ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                    ^^^^^^^^^ support.function.kind-test.xpath
##                              ^ punctuation.section.arguments.begin.xpath
##                               ^^ entity.other.attribute-name.namespace.xpath
##                                 ^ punctuation.separator.namespace.xpath
##                                  ^^^^ entity.other.attribute-name.localname.xpath
##                                      ^ punctuation.separator.arguments.xpath
##                                        ^^ entity.name.tag.namespace.xpath
##                                          ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                           ^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                                ^ keyword.operator.quantifier.xpath
##                                                 ^ punctuation.section.arguments.end.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-SchemaAttributeTest -->

<xsl:value-of select="schema-attribute(ns:name)" />
##                    ^^^^^^^^^^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                                    ^^^^^^^^^ meta.function-call.arguments.xpath
##                                    ^ punctuation.section.arguments.begin.xpath
##                                     ^^ entity.name.tag.namespace.xpath
##                                       ^ punctuation.separator.namespace.xpath
##                                        ^^^^ entity.name.tag.localname.xpath
##                                            ^ punctuation.section.arguments.end.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-ElementTest -->

<xsl:value-of select="element(*, ns:type1?)" />
##                    ^^^^^^^ meta.function-call.identifier.xpath
##                           ^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                    ^^^^^^^ support.function.kind-test.xpath
##                           ^ punctuation.section.arguments.begin.xpath
##                            ^ constant.other.wildcard.asterisk.xpath
##                             ^ punctuation.separator.arguments.xpath
##                               ^^ entity.name.tag.namespace.xpath
##                                 ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                  ^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                       ^ keyword.operator.quantifier.xpath
##                                        ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="element(ns:name, ns:type1?)" />
##                    ^^^^^^^ meta.function-call.identifier.xpath
##                           ^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                    ^^^^^^^ support.function.kind-test.xpath
##                           ^ punctuation.section.arguments.begin.xpath
##                            ^^ entity.name.tag.namespace.xpath
##                              ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                               ^^^^ entity.name.tag.localname.xpath
##                                   ^ punctuation.separator.arguments.xpath
##                                     ^^ entity.name.tag.namespace.xpath
##                                       ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                        ^^^^^ entity.name.tag.localname.xpath storage.type.xpath
##                                             ^ keyword.operator.quantifier.xpath
##                                              ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="element(ns:name, item()?)" />
##                    ^^^^^^^ meta.function-call.identifier.xpath
##                           ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                    ^^^^^^^ support.function.kind-test.xpath
##                           ^ punctuation.section.arguments.begin.xpath
##                            ^^ entity.name.tag.namespace.xpath
##                              ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                               ^^^^ entity.name.tag.localname.xpath
##                                   ^ punctuation.separator.arguments.xpath
##                                     ^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                                         ^ meta.function-call.arguments.xpath punctuation.section.arguments.begin.xpath
##                                          ^ meta.function-call.arguments.xpath punctuation.section.arguments.end.xpath
##                                           ^ keyword.operator.quantifier.xpath
##                                            ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="element(ns:name, func()?)" />
##                    ^^^^^^^ meta.function-call.identifier.xpath
##                           ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                    ^^^^^^^ support.function.kind-test.xpath
##                           ^ punctuation.section.arguments.begin.xpath
##                            ^^ entity.name.tag.namespace.xpath
##                              ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                               ^^^^ entity.name.tag.localname.xpath
##                                   ^ punctuation.separator.arguments.xpath
##                                     ^^^^ meta.function-call.identifier.xpath variable.function.xpath
##                                         ^ meta.function-call.arguments.xpath punctuation.section.arguments.begin.xpath
##                                          ^ meta.function-call.arguments.xpath punctuation.section.arguments.end.xpath
##                                           ^ keyword.operator.quantifier.xpath
##                                            ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="element($nsnode, func()?)" />
##                    ^^^^^^^ meta.function-call.identifier.xpath
##                           ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                    ^^^^^^^ support.function.kind-test.xpath
##                           ^ punctuation.section.arguments.begin.xpath
##                            ^^^^^^^ variable.other.xpath
##                                   ^ punctuation.separator.arguments.xpath
##                                     ^^^^ meta.function-call.identifier.xpath variable.function.xpath
##                                         ^ meta.function-call.arguments.xpath punctuation.section.arguments.begin.xpath
##                                          ^ meta.function-call.arguments.xpath punctuation.section.arguments.end.xpath
##                                           ^ keyword.operator.quantifier.xpath
##                                            ^ punctuation.section.arguments.end.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-SchemaAttributeTest -->

<xsl:value-of select="schema-element(ns:name)" />
##                    ^^^^^^^^^^^^^^ meta.function-call.identifier.xpath support.function.kind-test.xpath
##                                  ^^^^^^^^^ meta.function-call.arguments.xpath
##                                  ^ punctuation.section.arguments.begin.xpath
##                                   ^^ entity.name.tag.namespace.xpath
##                                     ^ entity.name.tag.xpath punctuation.separator.namespace.xpath
##                                      ^^^^ entity.name.tag.localname.xpath
##                                          ^ punctuation.section.arguments.end.xpath

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-ForExpr -->

{ for $a in expr, $b in expr }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl source.xpath.embedded.xsl
##                           ^ meta.interpolation.xsl - source.xpath
##^^^ keyword.control.loop.for.xpath
##    ^ punctuation.definition.variable.xpath
##     ^ variable.other.xpath
##       ^^ keyword.operator.iteration.xpath
##          ^^^^ entity.name.tag.localname.xpath
##              ^ punctuation.separator.sequence.xpath
##                ^ punctuation.definition.variable.xpath
##                 ^ variable.other.xpath
##                   ^^ keyword.operator.iteration.xpath
##                      ^^^^ entity.name.tag.localname.xpath
##                           ^ punctuation.section.interpolation.end.xsl

{ for $a in fn:distinct-values(book/author) return (book/author[. = $a][1], book[author = $a]/title) }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl source.xpath.embedded.xsl
##                                                                                                   ^ meta.interpolation.xsl - source.xpath
##^^^ keyword.control.loop.for.xpath
##    ^ punctuation.definition.variable.xpath
##     ^ variable.other.xpath
##       ^^ keyword.operator.iteration.xpath
##          ^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.xpath
##          ^^ variable.namespace.xpath
##            ^ punctuation.separator.namespace.xpath
##             ^^^^^^^^^^^^^^^ variable.function.xpath
##                            ^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                            ^ punctuation.section.arguments.begin.xpath
##                             ^^^^ entity.name.tag.localname.xpath
##                                 ^ punctuation.separator.path.xpath
##                                  ^^^^^^ entity.name.tag.localname.xpath
##                                        ^ punctuation.section.arguments.end.xpath
##                                          ^^^^^^ keyword.control.flow.return.xpath
##                                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.xpath
##                                                 ^ punctuation.section.group.begin.xpath
##                                                  ^^^^ entity.name.tag.localname.xpath
##                                                      ^ punctuation.separator.path.xpath
##                                                       ^^^^^^ entity.name.tag.localname.xpath
##                                                             ^^^^^^^^^^^ meta.predicate.xpath
##                                                             ^ punctuation.section.predicate.begin.xpath
##                                                              ^ variable.language.path.xpath
##                                                                ^ keyword.operator.comparison.xpath
##                                                                  ^ punctuation.definition.variable.xpath
##                                                                   ^ variable.other.xpath
##                                                                    ^ punctuation.section.predicate.end.xpath
##                                                                     ^ punctuation.section.predicate.begin.xpath
##                                                                      ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                                                       ^ punctuation.section.predicate.end.xpath
##                                                                        ^ punctuation.separator.sequence.xpath
##                                                                          ^^^^ entity.name.tag.localname.xpath
##                                                                              ^^^^^^^^^^^^^ meta.predicate.xpath
##                                                                              ^ punctuation.section.predicate.begin.xpath
##                                                                               ^^^^^^ entity.name.tag.localname.xpath
##                                                                                      ^ keyword.operator.comparison.xpath
##                                                                                        ^ punctuation.definition.variable.xpath
##                                                                                         ^ variable.other.xpath
##                                                                                          ^ punctuation.section.predicate.end.xpath
##                                                                                           ^ punctuation.separator.path.xpath
##                                                                                            ^^^^^ entity.name.tag.localname.xpath
##                                                                                                 ^ punctuation.section.group.end.xpath
##                                                                                                   ^ punctuation.section.interpolation.end.xsl

{ for $x in $z, $y in f($x) return g($x, $y)}
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl source.xpath.embedded.xsl
##                                          ^ meta.interpolation.xsl - source.xpath
##^^^ keyword.control.loop.for.xpath
##    ^^ variable.other.xpath
##    ^ punctuation.definition.variable.xpath
##       ^^ keyword.operator.iteration.xpath
##          ^ punctuation.definition.variable.xpath
##           ^ variable.other.xpath
##            ^ punctuation.separator.sequence.xpath
##              ^^ variable.other.xpath
##              ^ punctuation.definition.variable.xpath
##                 ^^ keyword.operator.iteration.xpath
##                    ^ meta.function-call.identifier.xpath variable.function.xpath
##                     ^^^^ meta.function-call.arguments.xpath
##                     ^ punctuation.section.arguments.begin.xpath
##                      ^ punctuation.definition.variable.xpath
##                       ^ variable.other.xpath
##                        ^ punctuation.section.arguments.end.xpath
##                          ^^^^^^ keyword.control.flow.return.xpath
##                                 ^ meta.function-call.identifier.xpath variable.function.xpath
##                                  ^^^^^^^^ meta.function-call.arguments.xpath
##                                  ^ punctuation.section.arguments.begin.xpath
##                                   ^ punctuation.definition.variable.xpath
##                                    ^ variable.other.xpath
##                                     ^ punctuation.separator.arguments.xpath
##                                       ^ punctuation.definition.variable.xpath
##                                        ^ variable.other.xpath
##                                         ^ punctuation.section.arguments.end.xpath
##                                          ^ punctuation.section.interpolation.end.xsl

{fn:sum(for $i in order-item return $i/@price * $i/@qty)}
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl source.xpath.embedded.xsl
##                                                      ^ meta.interpolation.xsl - source.xpath
##^^^^^ meta.function-call.identifier.xpath
##^ variable.namespace.xpath
## ^ punctuation.separator.namespace.xpath
##  ^^^ variable.function.xpath
##     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##     ^ punctuation.section.arguments.begin.xpath
##      ^^^ keyword.control.loop.for.xpath
##          ^^ variable.other.xpath
##          ^ punctuation.definition.variable.xpath
##             ^^ keyword.operator.iteration.xpath
##                ^^^^^^^^^^ entity.name.tag.localname.xpath
##                           ^^^^^^ keyword.control.flow.return.xpath
##                                  ^ punctuation.definition.variable.xpath
##                                   ^ variable.other.xpath
##                                    ^ punctuation.separator.path.xpath
##                                     ^ punctuation.definition.attribute.xpath
##                                      ^^^^^ entity.other.attribute-name.localname.xpath
##                                            ^ keyword.operator.arithmetic.xpath
##                                              ^ punctuation.definition.variable.xpath
##                                               ^ variable.other.xpath
##                                                ^ punctuation.separator.path.xpath
##                                                 ^ punctuation.definition.attribute.xpath
##                                                  ^^^ entity.other.attribute-name.localname.xpath
##                                                     ^ punctuation.section.arguments.end.xpath
##                                                      ^ punctuation.section.interpolation.end.xsl

{ return $i/@price }
##^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^ entity.name.tag.localname.xpath
##       ^^ variable.other.xpath
##         ^ punctuation.separator.path.xpath
##          ^ punctuation.definition.attribute.xpath
##           ^^^^^ entity.other.attribute-name.localname.xpath
##                 ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-IfExpr -->

{ if ($widget1/unit-cost < $widget2/unit-cost) then $widget1/else else $widget2 }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl source.xpath.embedded.xsl
##                                                                              ^ meta.interpolation.xsl - source.xpath
##^^ keyword.control.conditional.if.xpath
##   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.xpath
##   ^ punctuation.section.group.begin.xpath
##    ^^^^^^^^ variable.other.xpath
##    ^ punctuation.definition.variable.xpath
##            ^ punctuation.separator.path.xpath
##             ^^^^^^^^^ entity.name.tag.localname.xpath
##                       ^ keyword.operator.comparison.xpath
##                         ^^^^^^^^ variable.other.xpath
##                         ^ punctuation.definition.variable.xpath
##                                 ^ punctuation.separator.path.xpath
##                                  ^^^^^^^^^ entity.name.tag.localname.xpath
##                                           ^ punctuation.section.group.end.xpath
##                                             ^^^^ keyword.control.conditional.then.xpath
##                                                  ^^^^^^^^ variable.other.xpath
##                                                  ^ punctuation.definition.variable.xpath
##                                                          ^ punctuation.separator.path.xpath
##                                                           ^^^^ entity.name.tag.localname.xpath
##                                                                ^^^^ keyword.control.conditional.else.xpath
##                                                                     ^^^^^^^^ variable.other.xpath
##                                                                     ^ punctuation.definition.variable.xpath
##                                                                              ^ punctuation.section.interpolation.end.xsl

{ then $widget1 else $widget2 }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^ entity.name.tag.localname.xpath
##     ^^^^^^^^ variable.other.xpath
##     ^ punctuation.definition.variable.xpath
##              ^^^^ entity.name.tag.localname.xpath
##                   ^^^^^^^^ variable.other.xpath
##                   ^ punctuation.definition.variable.xpath
##                            ^ punctuation.section.interpolation.end.xsl

{ else $widget2 }
##^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^ entity.name.tag.localname.xpath
##     ^^^^^^^^ variable.other.xpath
##     ^ punctuation.definition.variable.xpath
##              ^ punctuation.section.interpolation.end.xsl

{ then/else[then=else] }
##^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^ entity.name.tag.localname.xpath
##    ^ punctuation.separator.path.xpath
##     ^^^^ entity.name.tag.localname.xpath
##         ^^^^^^^^^^^ meta.predicate.xpath
##         ^ punctuation.section.predicate.begin.xpath
##          ^^^^ entity.name.tag.localname.xpath
##              ^ keyword.operator.comparison.xpath
##               ^^^^ entity.name.tag.localname.xpath
##                   ^ punctuation.section.predicate.end.xpath
##                     ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/2010/REC-xpath20-20101214/#doc-xpath-QuantifiedExpr -->

{ every $part in /parts/part satisfies $part/@discounted }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl source.xpath.embedded.xsl
##                                                       ^ meta.interpolation.xsl - source.xpath
##^^^^^ keyword.control.loop.xpath
##      ^^^^^ variable.other.xpath
##      ^ punctuation.definition.variable.xpath
##            ^^ keyword.operator.iteration.xpath
##               ^ punctuation.separator.path.xpath
##                ^^^^^ entity.name.tag.localname.xpath
##                     ^ punctuation.separator.path.xpath
##                      ^^^^ entity.name.tag.localname.xpath
##                           ^^^^^^^^^ keyword.other.satisfies.xpath
##                                     ^ punctuation.definition.variable.xpath
##                                      ^^^^ variable.other.xpath
##                                          ^ punctuation.separator.path.xpath
##                                           ^ punctuation.definition.attribute.xpath
##                                            ^^^^^^^^^^ entity.other.attribute-name.localname.xpath
##                                                       ^ punctuation.section.interpolation.end.xsl

{ some $x in (1, 2, 3), $y in (2, 3, 4) satisfies $x + $y = 4 }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl source.xpath.embedded.xsl
##                                                            ^ meta.interpolation.xsl - source.xpath
##^^^^ keyword.control.loop.xpath
##     ^^ variable.other.xpath
##     ^ punctuation.definition.variable.xpath
##        ^^ keyword.operator.iteration.xpath
##           ^^^^^^^^^ meta.group.xpath
##           ^ punctuation.section.group.begin.xpath
##            ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##             ^ punctuation.separator.sequence.xpath
##               ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                ^ punctuation.separator.sequence.xpath
##                  ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                   ^ punctuation.section.group.end.xpath
##                    ^ punctuation.separator.sequence.xpath
##                      ^^ variable.other.xpath
##                      ^ punctuation.definition.variable.xpath
##                         ^^ keyword.operator.iteration.xpath
##                            ^^^^^^^^^ meta.group.xpath
##                            ^ punctuation.section.group.begin.xpath
##                             ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                              ^ punctuation.separator.sequence.xpath
##                                ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                 ^ punctuation.separator.sequence.xpath
##                                   ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                    ^ punctuation.section.group.end.xpath
##                                      ^^^^^^^^^ keyword.other.satisfies.xpath
##                                                ^ punctuation.definition.variable.xpath
##                                                 ^ variable.other.xpath
##                                                   ^ keyword.operator.arithmetic.xpath
##                                                     ^ punctuation.definition.variable.xpath
##                                                      ^ variable.other.xpath
##                                                        ^ keyword.operator.comparison.xpath
##                                                          ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                                            ^ punctuation.section.interpolation.end.xsl

{ satisfies/every/some }
##^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^^^ entity.name.tag.localname.xpath
##         ^ punctuation.separator.path.xpath
##          ^^^^^ entity.name.tag.localname.xpath
##               ^ punctuation.separator.path.xpath
##                ^^^^ entity.name.tag.localname.xpath
##                     ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-functions/#func-matches -->

{ matches(., ".*\$\d+\.\d{2}.*") }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^ meta.function-call.identifier.xpath variable.function.xpath
##       ^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##       ^ punctuation.section.arguments.begin.xpath
##        ^ variable.language.path.xpath
##         ^ punctuation.separator.arguments.xpath
##           ^^^^^^^^^^^^^^^^^^ meta.string.regexp.xpath string.quoted.double.xpath
##           ^ punctuation.definition.string.begin.xpath
##            ^ keyword.other.any.regexp
##             ^ keyword.operator.quantifier.regexp
##              ^^ constant.character.escape.regexp
##                ^^ keyword.control.character-class.regexp
##                  ^ keyword.operator.quantifier.regexp
##                   ^^ constant.character.escape.regexp
##                     ^^ keyword.control.character-class.regexp
##                       ^^^ keyword.operator.quantifier.regexp
##                          ^ keyword.other.any.regexp
##                           ^ keyword.operator.quantifier.regexp
##                            ^ punctuation.definition.string.end.xpath
##                             ^ punctuation.section.arguments.end.xpath
##                               ^ punctuation.section.interpolation.end.xsl

{ matches($in, 'url\(([^''&quot;)]+)\)', "x") }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^ meta.function-call.identifier.xpath variable.function.xpath
##       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##       ^ punctuation.section.arguments.begin.xpath
##        ^^^ variable.other.xpath
##        ^ punctuation.definition.variable.xpath
##           ^ punctuation.separator.arguments.xpath
##             ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.xpath string.quoted.single.xpath
##             ^ punctuation.definition.string.begin.xpath
##                 ^^ constant.character.escape.regexp
##                   ^^^^^^^^^^^^^^^ meta.group.regexp
##                   ^ punctuation.section.group.begin.regexp
##                    ^^^^^^^^^^^^ meta.set.regexp
##                    ^ punctuation.definition.set.begin.regexp
##                     ^ keyword.operator.logical.regexp
##                      ^^ constant.character.escape.xpath
##                               ^ punctuation.definition.set.end.regexp
##                                ^ keyword.operator.quantifier.regexp
##                                 ^ punctuation.section.group.end.regexp
##                                  ^^ constant.character.escape.regexp
##                                    ^ punctuation.definition.string.end.xpath
##                                     ^ punctuation.separator.arguments.xpath
##                                       ^^^ meta.string.xpath string.quoted.double.xpath
##                                       ^ punctuation.definition.string.begin.xpath
##                                         ^ punctuation.definition.string.end.xpath
##                                          ^ punctuation.section.arguments.end.xpath
##                                            ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-functions/#func-replace -->

{ replace($text, "\$\d+\.\d{2}", "\$xx.$1") }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^ meta.function-call.identifier.xpath variable.function.xpath
##       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##       ^ punctuation.section.arguments.begin.xpath
##        ^^^^^ variable.other.xpath
##        ^ punctuation.definition.variable.xpath
##             ^ punctuation.separator.arguments.xpath
##               ^^^^^^^^^^^^^^ meta.string.regexp.xpath string.quoted.double.xpath
##               ^ punctuation.definition.string.begin.xpath
##                ^^ constant.character.escape.regexp
##                  ^^ keyword.control.character-class.regexp
##                    ^ keyword.operator.quantifier.regexp
##                     ^^ constant.character.escape.regexp
##                       ^^ keyword.control.character-class.regexp
##                         ^^^ keyword.operator.quantifier.regexp
##                            ^ punctuation.definition.string.end.xpath
##                             ^ punctuation.separator.arguments.xpath
##                               ^^^^^^^^^ meta.string.xpath string.quoted.double.xpath
##                               ^ punctuation.definition.string.begin.xpath
##                                ^^ constant.character.escape.xpath
##                                     ^^ constant.character.placeholder.xpath
##                                       ^ punctuation.definition.string.end.xpath
##                                        ^ punctuation.section.arguments.end.xpath
##                                          ^ punctuation.section.interpolation.end.xsl

{ replace(replace($input, 'url\(([^''&quot;)]+)\)', 'url(''$1'')'), '(\d)(\w+)', '$1 $2') }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^ meta.function-call.identifier.xpath variable.function.xpath
##       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##       ^ punctuation.section.arguments.begin.xpath
##        ^^^^^^^ meta.function-call.identifier.xpath variable.function.xpath
##               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##               ^ punctuation.section.arguments.begin.xpath
##                ^^^^^^ variable.other.xpath
##                ^ punctuation.definition.variable.xpath
##                      ^ punctuation.separator.arguments.xpath
##                        ^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.xpath string.quoted.single.xpath
##                        ^ punctuation.definition.string.begin.xpath
##                            ^^ constant.character.escape.regexp
##                              ^^^^^^^^^^^^^^^ meta.group.regexp
##                              ^ punctuation.section.group.begin.regexp
##                               ^^^^^^^^^^^^ meta.set.regexp
##                               ^ punctuation.definition.set.begin.regexp
##                                ^ keyword.operator.logical.regexp
##                                 ^^ constant.character.escape.xpath
##                                          ^ punctuation.definition.set.end.regexp
##                                           ^ keyword.operator.quantifier.regexp
##                                            ^ punctuation.section.group.end.regexp
##                                             ^^ constant.character.escape.regexp
##                                               ^ punctuation.definition.string.end.xpath
##                                                ^ punctuation.separator.arguments.xpath
##                                                  ^^^^^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                                  ^ punctuation.definition.string.begin.xpath
##                                                       ^^ constant.character.escape.xpath
##                                                         ^^ constant.character.placeholder.xpath
##                                                           ^^ constant.character.escape.xpath
##                                                              ^ punctuation.definition.string.end.xpath
##                                                               ^ punctuation.section.arguments.end.xpath
##                                                                ^ punctuation.separator.arguments.xpath
##                                                                  ^^^^^^^^^^^ meta.string.regexp.xpath string.quoted.single.xpath
##                                                                  ^ punctuation.definition.string.begin.xpath
##                                                                   ^^^^^^^^^ meta.group.regexp
##                                                                   ^ punctuation.section.group.begin.regexp
##                                                                    ^^ keyword.control.character-class.regexp
##                                                                      ^ punctuation.section.group.end.regexp
##                                                                       ^ punctuation.section.group.begin.regexp
##                                                                        ^^ keyword.control.character-class.regexp
##                                                                          ^ keyword.operator.quantifier.regexp
##                                                                           ^ punctuation.section.group.end.regexp
##                                                                            ^ punctuation.definition.string.end.xpath
##                                                                             ^ punctuation.separator.arguments.xpath
##                                                                               ^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                                                               ^ punctuation.definition.string.begin.xpath
##                                                                                ^^ constant.character.placeholder.xpath
##                                                                                   ^^ constant.character.placeholder.xpath
##                                                                                     ^ punctuation.definition.string.end.xpath
##                                                                                      ^ punctuation.section.arguments.end.xpath
##                                                                                        ^ punctuation.section.interpolation.end.xsl

<!-- https://www.w3.org/TR/xpath-functions/#func-tokenize -->

{ tokenize("abracadabra", "(ab)|(a)") }
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.interpolation.xsl
##^^^^^^^^ meta.function-call.identifier.xpath variable.function.xpath
##        ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##        ^ punctuation.section.arguments.begin.xpath
##         ^^^^^^^^^^^^^ meta.string.xpath string.quoted.double.xpath
##         ^ punctuation.definition.string.begin.xpath
##                     ^ punctuation.definition.string.end.xpath
##                      ^ punctuation.separator.arguments.xpath
##                        ^^^^^^^^^^ meta.string.regexp.xpath string.quoted.double.xpath
##                        ^ punctuation.definition.string.begin.xpath
##                         ^^^^ meta.group.regexp
##                         ^ punctuation.section.group.begin.regexp
##                            ^ punctuation.section.group.end.regexp
##                             ^ keyword.operator.alternation.regexp
##                              ^^^ meta.group.regexp
##                              ^ punctuation.section.group.begin.regexp
##                                ^ punctuation.section.group.end.regexp
##                                 ^ punctuation.definition.string.end.xpath
##                                  ^ punctuation.section.arguments.end.xpath
##                                    ^ punctuation.section.interpolation.end.xsl