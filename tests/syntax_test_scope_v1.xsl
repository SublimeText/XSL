## SYNTAX TEST "Packages/XSL/XSL 1.0.sublime-syntax"

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


<!-- double with exponents requires XPath 2.0+ -->
{ .5e1 + .5e+1 + .5e-1 + 5e1 + 5e+1 + 5e-1 + 5.e1 + 5.e+1 + 5.e-1 + 5.5e1 + 5.5e+1 + 5.5e-1 }
##^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##^ punctuation.separator.decimal.xpath
##  ^^ entity.name.tag.localname.xpath
##     ^ keyword.operator.arithmetic.xpath
##       ^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##       ^ punctuation.separator.decimal.xpath
##         ^ entity.name.tag.localname.xpath
##          ^ keyword.operator.arithmetic.xpath
##           ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##             ^ keyword.operator.arithmetic.xpath
##               ^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##               ^ punctuation.separator.decimal.xpath
##                 ^^^ entity.name.tag.localname.xpath
##                     ^ keyword.operator.arithmetic.xpath
##                       ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                        ^^ entity.name.tag.localname.xpath
##                           ^ keyword.operator.arithmetic.xpath
##                             ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                              ^ entity.name.tag.localname.xpath
##                               ^ keyword.operator.arithmetic.xpath
##                                ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                  ^ keyword.operator.arithmetic.xpath
##                                    ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                     ^^^ entity.name.tag.localname.xpath
##                                         ^ keyword.operator.arithmetic.xpath
##                                           ^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##                                            ^ punctuation.separator.decimal.xpath
##                                             ^^ entity.name.tag.localname.xpath
##                                                ^ keyword.operator.arithmetic.xpath
##                                                  ^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##                                                   ^ punctuation.separator.decimal.xpath
##                                                    ^ entity.name.tag.localname.xpath
##                                                     ^ keyword.operator.arithmetic.xpath
##                                                      ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                                        ^ keyword.operator.arithmetic.xpath
##                                                          ^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##                                                           ^ punctuation.separator.decimal.xpath
##                                                            ^^^ entity.name.tag.localname.xpath
##                                                                ^ keyword.operator.arithmetic.xpath
##                                                                  ^^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##                                                                   ^ punctuation.separator.decimal.xpath
##                                                                     ^^ entity.name.tag.localname.xpath
##                                                                        ^ keyword.operator.arithmetic.xpath
##                                                                          ^^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##                                                                           ^ punctuation.separator.decimal.xpath
##                                                                             ^ entity.name.tag.localname.xpath
##                                                                              ^ keyword.operator.arithmetic.xpath
##                                                                               ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                                                                 ^ keyword.operator.arithmetic.xpath
##                                                                                   ^^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##                                                                                    ^ punctuation.separator.decimal.xpath
##                                                                                      ^^^ entity.name.tag.localname.xpath

{ "st""ri''ng" or 'st""ri''ng' }
##^^^^^^^^^^^^ meta.string.xpath string.quoted.double.xpath
##^ punctuation.definition.string.begin.xpath
##   ^ punctuation.definition.string.end.xpath
##    ^ punctuation.definition.string.begin.xpath
##           ^ punctuation.definition.string.end.xpath
##             ^^ keyword.operator.logical.xpath
##                ^^^^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                ^ punctuation.definition.string.begin.xpath
##                       ^ punctuation.definition.string.end.xpath
##                        ^ punctuation.definition.string.begin.xpath
##                           ^ punctuation.definition.string.end.xpath
##                             ^ punctuation.section.interpolation.end.xsl

<!-- Operator Tests -->

<xsl:value-of select="and and and or or" />
##                    ^^^ entity.name.tag.localname.xpath
##                        ^^^ keyword.operator.logical.xpath
##                            ^^^ entity.name.tag.localname.xpath
##                                ^^ keyword.operator.logical.xpath
##                                   ^^ entity.name.tag.localname.xpath

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

<xsl:value-of select=" .1 *2** " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                             ^ meta.tag.xsl meta.string.xml - source.xpath
##                     ^^ meta.number.float.decimal.xpath constant.numeric.value.xpath
##                     ^ punctuation.separator.decimal.xpath
##                        ^ keyword.operator.arithmetic.xpath
##                         ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                          ^ keyword.operator.arithmetic.xpath
##                           ^ constant.other.wildcard.asterisk.xpath

<xsl:value-of select="-3.div--(-.2+1-1+-1--1)" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.group
##                            ^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.group.xpath
##                                           ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.number.float.decimal.xpath
##                    ^ keyword.operator.arithmetic.xpath
##                     ^ constant.numeric.value.xpath - punctuation - keyword
##                      ^ constant.numeric.value.xpath punctuation.separator.decimal.xpath
##                       ^^^ keyword.operator.arithmetic.xpath
##                          ^^ keyword.operator.arithmetic.xpath
##                            ^ punctuation.section.group.begin.xpath
##                             ^^^ meta.number.float.decimal.xpath
##                             ^ keyword.operator.arithmetic.xpath
##                              ^ constant.numeric.value.xpath punctuation.separator.decimal.xpath
##                               ^ constant.numeric.value.xpath - punctuation
##                                ^ keyword.operator.arithmetic.xpath - meta.number
##                                 ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                  ^ keyword.operator.arithmetic.xpath - meta.number
##                                   ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                    ^ keyword.operator.arithmetic.xpath - meta.number
##                                     ^ meta.number.integer.decimal.xpath keyword.operator.arithmetic.xpath
##                                      ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                       ^ keyword.operator.arithmetic.xpath - meta.number
##                                        ^ meta.number.integer.decimal.xpath keyword.operator.arithmetic.xpath
##                                         ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                          ^ punctuation.section.group.end.xpath

<xsl:value-of select=" 5mod2+ " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                            ^ meta.tag.xsl meta.string.xml - source.xpath
##                     ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                      ^^^ keyword.operator.arithmetic.xpath
##                         ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                          ^ keyword.operator.arithmetic.xpath

<!-- Group Tests -->

<xsl:value-of select=" -( ) " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.group
##                      ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.group.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                     ^ keyword.operator.arithmetic.xpath
##                      ^ punctuation.section.group.begin.xpath
##                        ^ punctuation.section.group.end.xpath

<xsl:value-of select=" -() " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.group
##                      ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.group.xpath
##                        ^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.group
##                         ^ meta.tag.xsl meta.string.xml - source.xpath
##                     ^ keyword.operator.arithmetic.xpath
##                      ^ punctuation.section.group.begin.xpath
##                       ^ punctuation.section.group.end.xpath

<xsl:value-of select=" -(.) " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.group
##                      ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.group.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                     ^ keyword.operator.arithmetic.xpath
##                      ^ punctuation.section.group.begin.xpath
##                       ^ variable.language.path.xpath
##                        ^ punctuation.section.group.end.xpath

<xsl:value-of select=" -(..) " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.group
##                      ^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.group.xpath
##                           ^ meta.tag.xsl meta.string.xml - source.xpath
##                     ^ keyword.operator.arithmetic.xpath
##                      ^ punctuation.section.group.begin.xpath
##                       ^^ variable.language.path.xpath
##                         ^ punctuation.section.group.end.xpath

<xsl:value-of select=" -(*) " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.group
##                      ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.group.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                     ^ keyword.operator.arithmetic.xpath
##                      ^ punctuation.section.group.begin.xpath
##                       ^ constant.other.wildcard.asterisk.xpath
##                        ^ punctuation.section.group.end.xpath

<xsl:value-of select=" -(/) " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.group
##                      ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.group.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                     ^ keyword.operator.arithmetic.xpath
##                      ^ punctuation.section.group.begin.xpath
##                       ^ punctuation.separator.path.xpath
##                        ^ punctuation.section.group.end.xpath

<xsl:value-of select=" -(,) " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.group
##                      ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.group.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                     ^ keyword.operator.arithmetic.xpath
##                      ^ punctuation.section.group.begin.xpath
##                       ^ punctuation.separator.sequence.xpath
##                        ^ punctuation.section.group.end.xpath

<xsl:value-of select=" -(,,) " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.group
##                      ^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.group.xpath
##                           ^ meta.tag.xsl meta.string.xml - source.xpath
##                     ^ keyword.operator.arithmetic.xpath
##                      ^ punctuation.section.group.begin.xpath
##                       ^^ punctuation.separator.sequence.xpath
##                         ^ punctuation.section.group.end.xpath

<xsl:value-of select=" -(]) " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.group
##                      ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.group.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                     ^ keyword.operator.arithmetic.xpath
##                      ^ punctuation.section.group.begin.xpath
##                       ^ invalid.illegal.stray.xpath
##                        ^ punctuation.section.group.end.xpath

<xsl:value-of select="*[@key=('firstname','surname','department')]"/>
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                     ^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath - meta.group
##                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath meta.group.xpath
##                                                               ^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath - meta.group
##                                                                ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^ constant.other.wildcard.asterisk.xpath
##                     ^ punctuation.section.predicate.begin.xpath
##                      ^ punctuation.definition.attribute.xpath
##                       ^^^ entity.other.attribute-name.localname.xpath
##                          ^ keyword.operator.comparison.xpath
##                           ^ punctuation.section.group.begin.xpath
##                            ^^^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                       ^ punctuation.separator.sequence.xpath
##                                        ^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                                 ^ punctuation.separator.sequence.xpath
##                                                  ^^^^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                                              ^ punctuation.section.group.end.xpath
##                                                               ^ punctuation.section.predicate.end.xpath

<xsl:value-of select="*[contains(@class,' topic/object ')][@data and not(@data='')][@type='DITA-foreign']" />
##                    ^ source.xpath.embedded.xsl - mete.predicate
##                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.xpath.embedded.xsl meta.predicate.xpath
##                     ^ punctuation.section.predicate.begin.xpath
##                      ^^^^^^^^ meta.function-call.identifier.xpath
##                              ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                                                       ^ punctuation.section.predicate.end.xpath
##                                                        ^ punctuation.section.predicate.begin.xpath
##                                                         ^ punctuation.definition.attribute.xpath
##                                                          ^^^^ entity.other.attribute-name.localname.xpath
##                                                               ^^^ keyword.operator.logical.xpath
##                                                                                ^ punctuation.section.predicate.end.xpath
##                                                                                 ^ punctuation.section.predicate.begin.xpath
##                                                                                                      ^ punctuation.section.predicate.end.xpath

<!-- Function Call Tests -->

<xsl:value-of select="fun(.)" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.identifier.xpath
##                       ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.arguments.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                       ^ punctuation.section.arguments.begin.xpath
##                        ^ variable.language.path.xpath
##                         ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="fun(..)" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.identifier.xpath
##                       ^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.arguments.xpath
##                           ^ meta.tag.xsl meta.string.xml - source.xpath
##                       ^ punctuation.section.arguments.begin.xpath
##                        ^^ variable.language.path.xpath
##                          ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="fun(*)" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.identifier.xpath
##                       ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.arguments.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                       ^ punctuation.section.arguments.begin.xpath
##                        ^ constant.other.wildcard.asterisk.xpath
##                         ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="fun(/)" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.identifier.xpath
##                       ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.arguments.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                       ^ punctuation.section.arguments.begin.xpath
##                        ^ punctuation.separator.path.xpath
##                         ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="fun(,)" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.identifier.xpath
##                       ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.arguments.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                       ^ punctuation.section.arguments.begin.xpath
##                        ^ punctuation.separator.arguments.xpath
##                         ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="fun(])" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.identifier.xpath
##                       ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.function-call.arguments.xpath
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                       ^ punctuation.section.arguments.begin.xpath
##                        ^ invalid.illegal.stray.xpath
##                         ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="replace(normalize-space(.),&quot;&apos;&quot;,&quot;&apos;&apos;&quot;)" />
##                    ^^^^^^^ meta.function-call.identifier.xpath variable.function.xpath
##                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                           ^ punctuation.section.arguments.begin.xpath
##                            ^^^^^^^^^^^^^^^ meta.function-call.identifier.xpath variable.function.xpath
##                                           ^^^ meta.function-call.arguments.xpath
##                                           ^ punctuation.section.arguments.begin.xpath
##                                            ^ variable.language.path.xpath
##                                             ^ punctuation.section.arguments.end.xpath
##                                              ^ punctuation.separator.arguments.xpath
##                                               ^^^^^^^^^^^^^^^^^^ constant.character.entity.named.xml
##                                               ^ punctuation.definition.entity.xml
##                                                    ^ punctuation.terminator.entity.xml
##                                                     ^ punctuation.definition.entity.xml
##                                                          ^ punctuation.terminator.entity.xml
##                                                           ^ punctuation.definition.entity.xml
##                                                                ^ punctuation.terminator.entity.xml
##                                                                 ^ punctuation.separator.arguments.xpath
##                                                                  ^^^^^^^^^^^^^^^^^^^^^^^^ constant.character.entity.named.xml
##                                                                  ^ punctuation.definition.entity.xml
##                                                                       ^ punctuation.terminator.entity.xml
##                                                                        ^ punctuation.definition.entity.xml
##                                                                             ^ punctuation.terminator.entity.xml
##                                                                              ^ punctuation.definition.entity.xml
##                                                                                   ^ punctuation.terminator.entity.xml
##                                                                                    ^ punctuation.definition.entity.xml
##                                                                                         ^ punctuation.terminator.entity.xml
##                                                                                          ^ punctuation.section.arguments.end.xpath
##                                                                                           ^ string.quoted.double.xml punctuation.definition.string.end.xml

<!-- Axes Tests -->

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

<!-- Selects all book nodes that are children of the current node -->
<xsl:value-of select="child::book" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                               ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^ constant.language.axis.xpath
##                         ^^ punctuation.accessor.double-colon.xpath
##                           ^^^^ entity.name.tag.localname.xpath

<!-- Selects the lang attribute of the current node -->
<xsl:value-of select="attribute::lang" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^ constant.language.axis.xpath
##                             ^^ punctuation.accessor.double-colon.xpath
##                               ^^^^ entity.other.attribute-name.localname.xpath

<!-- Selects all element children of the current node -->
<xsl:value-of select="child::*" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                            ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^ constant.language.axis.xpath
##                         ^^ punctuation.accessor.double-colon.xpath
##                           ^ constant.other.wildcard.asterisk.xpath

<!-- Selects all attributes of the current node -->
<xsl:value-of select="attribute::*" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                                ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^ constant.language.axis.xpath
##                             ^^ punctuation.accessor.double-colon.xpath
##                               ^ constant.other.wildcard.asterisk.xpath

<!-- Selects all attribute 'attr' of the current node -->
<xsl:value-of select="attribute::attr" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^ constant.language.axis.xpath
##                             ^^ punctuation.accessor.double-colon.xpath
##                               ^^^^ entity.other.attribute-name.localname.xpath

<!-- Selects all text node children of the current node -->
<xsl:value-of select="child::text()" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                                 ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^ constant.language.axis.xpath
##                         ^^ punctuation.accessor.double-colon.xpath
##                           ^^^^ support.function.kind-test.xpath
##                               ^ punctuation.section.arguments.begin.xpath
##                                ^ punctuation.section.arguments.end.xpath

<!-- Selects all children of the current node -->
<xsl:value-of select="child::node()" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                                 ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^ constant.language.axis.xpath
##                         ^^ punctuation.accessor.double-colon.xpath
##                           ^^^^ support.function.kind-test.xpath
##                               ^ punctuation.section.arguments.begin.xpath
##                                ^ punctuation.section.arguments.end.xpath

<!-- Selects all book descendants of the current node -->
<xsl:value-of select="descendant::book" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                                    ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^ constant.language.axis.xpath
##                              ^^ punctuation.accessor.double-colon.xpath
##                                ^^^^ entity.name.tag.localname.xpath

<!-- Selects all book ancestors of the current node -->
<xsl:value-of select="ancestor::book" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                                  ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^ constant.language.axis.xpath
##                            ^^ punctuation.accessor.double-colon.xpath
##                              ^^^^ entity.name.tag.localname.xpath

<!-- Selects all book ancestors of the current node - and the current as well if it is a book node -->
<xsl:value-of select="ancestor-or-self::book" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^^^ constant.language.axis.xpath
##                                    ^^ punctuation.accessor.double-colon.xpath
##                                      ^^^^ entity.name.tag.localname.xpath

<!-- Selects all price grandchildren of the current node -->
<xsl:value-of select="child::*/child::price" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                                         ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^ constant.language.axis.xpath
##                         ^^ punctuation.accessor.double-colon.xpath
##                           ^ constant.other.wildcard.asterisk.xpath
##                             ^^^^^ constant.language.axis.xpath
##                                  ^^ punctuation.accessor.double-colon.xpath
##                                    ^^^^^ entity.name.tag.localname.xpath

<!-- Abbreviated axes test -->
<xsl:value-of select="para[@type='warning']" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                        ^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                                         ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^ entity.name.tag.localname.xpath
##                        ^ punctuation.section.predicate.begin.xpath
##                         ^ punctuation.definition.attribute.xpath
##                          ^^^^ entity.other.attribute-name.localname.xpath
##                              ^ keyword.operator.comparison.xpath
##                               ^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                        ^ punctuation.section.predicate.end.xpath

<!-- Verbose axes test -->
<xsl:value-of select="child::para[attribute::type='warning']" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                                                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^ constant.language.axis.xpath
##                         ^^ punctuation.accessor.double-colon.xpath
##                           ^^^^ entity.name.tag.localname.xpath
##                               ^ punctuation.section.predicate.begin.xpath
##                                ^^^^^^^^^ constant.language.axis.xpath
##                                         ^^ punctuation.accessor.double-colon.xpath
##                                           ^^^^ entity.other.attribute-name.localname.xpath
##                                               ^ keyword.operator.comparison.xpath
##                                                ^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                                         ^ punctuation.section.predicate.end.xpath

<xsl:value-of select="child::fi:para[attribute::fi:type='warning']" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                                                                ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^ constant.language.axis.xpath
##                         ^^ punctuation.accessor.double-colon.xpath
##                           ^^ entity.name.tag.namespace.xpath
##                             ^ punctuation.separator.namespace.xpath
##                              ^^^^ entity.name.tag.localname.xpath
##                                  ^ punctuation.section.predicate.begin.xpath
##                                   ^^^^^^^^^ constant.language.axis.xpath
##                                            ^^ punctuation.accessor.double-colon.xpath
##                                              ^^ entity.other.attribute-name.namespace.xpath
##                                                ^ punctuation.separator.namespace.xpath
##                                                 ^^^^ entity.other.attribute-name.localname.xpath
##                                                     ^ keyword.operator.comparison.xpath
##                                                      ^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                                               ^ punctuation.section.predicate.end.xpath

<xsl:value-of select="child::'element'/( .. or . )/25[@foo=bar]" />
##                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.xml
##                   ^ string.quoted.double.xml punctuation.definition.string.begin.xml
##                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.xpath.embedded.xsl
##                    ^^^^^ constant.language.axis.xpath
##                         ^^ punctuation.accessor.double-colon.xpath
##                           ^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                           ^ punctuation.definition.string.begin.xpath
##                                   ^ punctuation.definition.string.end.xpath
##                                    ^ punctuation.separator.path.xpath
##                                     ^^^^^^^^^^^ meta.group.xpath
##                                     ^ punctuation.section.group.begin.xpath
##                                       ^^ variable.language.path.xpath
##                                          ^^ keyword.operator.logical.xpath
##                                             ^ variable.language.path.xpath
##                                               ^ punctuation.section.group.end.xpath
##                                                ^ punctuation.separator.path.xpath
##                                                 ^^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                                   ^^^^^^^^^^ meta.predicate.xpath
##                                                   ^ punctuation.section.predicate.begin.xpath
##                                                    ^ punctuation.definition.attribute.xpath
##                                                     ^^^ entity.other.attribute-name.localname.xpath
##                                                        ^ keyword.operator.comparison.xpath
##                                                         ^^^ entity.name.tag.localname.xpath
##                                                            ^ punctuation.section.predicate.end.xpath
##                                                             ^ string.quoted.double.xml punctuation.definition.string.end.xml

<!-- Node Type Tests -->

<xsl:value-of select="comment()" />
##                    ^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                    ^^^^^^^ meta.function-call.identifier.xpath
##                           ^^ meta.function-call.arguments.xpath
##                    ^^^^^^^ support.function.kind-test.xpath
##                           ^ punctuation.section.arguments.begin.xpath
##                            ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="node()" />
##                    ^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                    ^^^^ meta.function-call.identifier.xpath
##                        ^^ meta.function-call.arguments.xpath
##                    ^^^^ support.function.kind-test.xpath
##                        ^ punctuation.section.arguments.begin.xpath
##                         ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="processing-instruction('Instruction')" />
##                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                    ^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.identifier.xpath
##                                          ^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath
##                    ^^^^^^^^^^^^^^^^^^^^^^ support.function.kind-test.xpath
##                                          ^ punctuation.section.arguments.begin.xpath
##                                           ^^^^^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                                        ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="text()" />
##                    ^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                    ^^^^ meta.function-call.identifier.xpath
##                        ^^ meta.function-call.arguments.xpath
##                    ^^^^ support.function.kind-test.xpath
##                        ^ punctuation.section.arguments.begin.xpath
##                         ^ punctuation.section.arguments.end.xpath

<!-- Predicate Tests -->

<xsl:value-of select="[]" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                      ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^ punctuation.section.predicate.begin.xpath
##                     ^ punctuation.section.predicate.end.xpath

<xsl:value-of select="[2]" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                       ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^ punctuation.section.predicate.begin.xpath
##                     ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                      ^ punctuation.section.predicate.end.xpath

<xsl:value-of select="foo[] " />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                       ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                         ^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                          ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ entity.name.tag.localname.xpath
##                       ^ punctuation.section.predicate.begin.xpath
##                        ^ punctuation.section.predicate.end.xpath

<xsl:value-of select="foo[2][1]" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                       ^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                             ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ entity.name.tag.localname.xpath
##                       ^ punctuation.section.predicate.begin.xpath
##                        ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                         ^ punctuation.section.predicate.end.xpath
##                          ^ punctuation.section.predicate.begin.xpath
##                           ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                            ^ punctuation.section.predicate.end.xpath

<xsl:value-of select="foo[2]/[1]" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                       ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                          ^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                           ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                              ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^ entity.name.tag.localname.xpath
##                       ^ punctuation.section.predicate.begin.xpath
##                        ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                         ^ punctuation.section.predicate.end.xpath
##                          ^ punctuation.separator.path.xpath
##                           ^ punctuation.section.predicate.begin.xpath
##                            ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                             ^ punctuation.section.predicate.end.xpath

<xsl:value-of select="foo[2]/attribute::bar[1]" />
##                   ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.xml
##                   ^ string.quoted.double.xml punctuation.definition.string.begin.xml
##                    ^^^^^^^^^^^^^^^^^^^^^^^^ source.xpath.embedded.xsl
##                    ^^^ entity.name.tag.localname.xpath
##                       ^^^ meta.predicate.xpath
##                       ^ punctuation.section.predicate.begin.xpath
##                        ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                         ^ punctuation.section.predicate.end.xpath
##                          ^ punctuation.separator.path.xpath
##                           ^^^^^^^^^ constant.language.axis.xpath
##                                    ^^ punctuation.accessor.double-colon.xpath
##                                      ^^^ entity.other.attribute-name.localname.xpath
##                                         ^^^ meta.predicate.xpath
##                                         ^ punctuation.section.predicate.begin.xpath
##                                          ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                           ^ punctuation.section.predicate.end.xpath
##                                            ^ string.quoted.double.xml punctuation.definition.string.end.xml
##                                              ^^ punctuation.definition.tag.end.xml, punctuation.definition.tag.end.self-closing.xml

<!-- Path Tests -->

<xsl:strip-space elements="*" />
##                        ^^^ meta.tag.xsl meta.string.xml
##                         ^ source.xpath.embedded.xsl constant.other.wildcard.asterisk.xpath

<xsl:value-of select="." />
##                   ^^^ meta.tag.xsl meta.string.xml
##                    ^ source.xpath.embedded.xsl variable.language.path.xpath

<xsl:value-of select=".." />
##                   ^^^^ meta.tag.xsl meta.string.xml
##                    ^^ source.xpath.embedded.xsl variable.language.path.xpath

<xsl:value-of select="*" />
##                   ^^^ meta.tag.xsl meta.string.xml
##                    ^ source.xpath.embedded.xsl constant.other.wildcard.asterisk.xpath

<xsl:value-of select="/" />
##                   ^^^ meta.tag.xsl meta.string.xml
##                    ^ source.xpath.embedded.xsl punctuation.separator.path.xpath

<xsl:value-of select="//" />
##                   ^^^^ meta.tag.xsl meta.string.xml
##                    ^^ source.xpath.embedded.xsl punctuation.separator.path.xpath

<xsl:value-of select="///" />
##                   ^^^^^ meta.tag.xsl meta.string.xml
##                    ^^^ source.xpath.embedded.xsl punctuation.separator.path.xpath

<xsl:value-of select="//foo//bar" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                              ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ punctuation.separator.path.xpath
##                      ^^^ entity.name.tag.localname.xpath
##                         ^^ punctuation.separator.path.xpath
##                           ^^^ entity.name.tag.localname.xpath

<xsl:value-of select="//..//./*/ns:*" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                                  ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ punctuation.separator.path.xpath
##                      ^^ variable.language.path.xpath
##                        ^^ punctuation.separator.path.xpath
##                          ^ variable.language.path.xpath
##                           ^ punctuation.separator.path.xpath
##                            ^ constant.other.wildcard.asterisk.xpath
##                             ^ punctuation.separator.path.xpath
##                              ^^ entity.name.tag.namespace.xpath
##                                ^ punctuation.separator.namespace.xpath
##                                 ^ constant.other.wildcard.asterisk.xpath

<xsl:value-of select="/and/ *" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                           ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^ punctuation.separator.path.xpath
##                     ^^^ entity.name.tag.localname.xpath
##                        ^ punctuation.separator.path.xpath
##                          ^ constant.other.wildcard.asterisk.xpath

<xsl:value-of select="/ for/../hello.world/ ns :foobar" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                                                    ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^ punctuation.separator.path.xpath
##                      ^^^ entity.name.tag.localname.xpath
##                         ^ punctuation.separator.path.xpath
##                          ^^ variable.language.path.xpath
##                            ^ punctuation.separator.path.xpath
##                             ^^^^^^^^^^^ entity.name.tag.localname.xpath
##                                        ^ punctuation.separator.path.xpath
##                                          ^^ entity.name.tag.namespace.xpath
##                                             ^ punctuation.separator.namespace.xpath
##                                              ^^^^^^ entity.name.tag.localname.xpath

<xsl:value-of select="(/hello/descendant::world)[1]" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.group.xpath
##                                              ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                                                 ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^ punctuation.section.group.begin.xpath
##                     ^ punctuation.separator.path.xpath
##                      ^^^^^ entity.name.tag.localname.xpath
##                           ^ punctuation.separator.path.xpath
##                            ^^^^^^^^^^ constant.language.axis.xpath
##                                      ^^ punctuation.accessor.double-colon.xpath
##                                        ^^^^^ entity.name.tag.localname.xpath
##                                             ^ punctuation.section.group.end.xpath
##                                              ^ punctuation.section.predicate.begin.xpath
##                                               ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                                ^ punctuation.section.predicate.end.xpath

<xsl:value-of select="/ @ hello/ text () / $var / ancestor :: test :*" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl
##                               ^^^^^ meta.function-call.identifier.xpath - meta.function-call meta.function-call
##                                    ^^ meta.function-call.arguments.xpath - meta.function-call meta.function-call
##                                                                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^ punctuation.separator.path.xpath
##                      ^ punctuation.definition.attribute.xpath
##                        ^^^^^ entity.other.attribute-name.localname.xpath
##                             ^ punctuation.separator.path.xpath
##                               ^^^^ support.function.kind-test.xpath
##                                    ^ punctuation.section.arguments.begin.xpath
##                                     ^ punctuation.section.arguments.end.xpath
##                                       ^ punctuation.separator.path.xpath
##                                         ^^^^ variable.other.xpath
##                                              ^ punctuation.separator.path.xpath
##                                                ^^^^^^^^ constant.language.axis.xpath
##                                                         ^^ punctuation.accessor.double-colon.xpath
##                                                            ^^^^ entity.name.tag.namespace.xpath
##                                                                 ^ punctuation.separator.namespace.xpath
##                                                                  ^ constant.other.wildcard.asterisk.xpath

<xsl:value-of select="//example[1]/*[starts-with(local-name(), 'hello') and./text()and'hello[world][1]'+*]" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                             ^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                                ^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                                   ^^^^^^^^^^^ meta.function-call.identifier.xpath - meta.function-call meta.function-call
##                                              ^ meta.function-call.arguments.xpath - meta.function-call meta.function-call - variable.function
##                                               ^^^^^^^^^^ meta.function-call.arguments.xpath meta.function-call.identifier.xpath - meta.function-call meta.function-call meta.function-call
##                                                         ^^ meta.function-call.arguments.xpath meta.function-call.arguments.xpath - meta.function-call meta.function-call meta.function-call
##                                                           ^^^^^^^^^^ meta.function-call.arguments.xpath - meta.function-call meta.function-call
##                                                                           ^^^^ meta.function-call.identifier.xpath - meta.function-call meta.function-call
##                                                                               ^^ meta.function-call.arguments.xpath - meta.function-call meta.function-call
##                                                                                                        ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^ punctuation.separator.path.xpath
##                      ^^^^^^^ entity.name.tag.localname.xpath
##                             ^ punctuation.section.predicate.begin.xpath
##                              ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                               ^ punctuation.section.predicate.end.xpath
##                                ^ punctuation.separator.path.xpath
##                                 ^ constant.other.wildcard.asterisk.xpath
##                                  ^ punctuation.section.predicate.begin.xpath
##                                   ^^^^^^^^^^^ variable.function.xpath
##                                              ^ punctuation.section.arguments.begin.xpath - variable.function
##                                               ^^^^^^^^^^ variable.function.xpath
##                                                         ^ punctuation.section.arguments.begin.xpath
##                                                          ^ punctuation.section.arguments.end.xpath
##                                                           ^ punctuation.separator.arguments.xpath
##                                                             ^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                                                    ^ punctuation.section.arguments.end.xpath
##                                                                      ^^^ keyword.operator.logical.xpath
##                                                                         ^ variable.language.path.xpath
##                                                                          ^ punctuation.separator.path.xpath
##                                                                           ^^^^ support.function.kind-test.xpath
##                                                                               ^ punctuation.section.arguments.begin.xpath
##                                                                                ^ punctuation.section.arguments.end.xpath
##                                                                                 ^^^ keyword.operator.logical.xpath
##                                                                                    ^^^^^^^^^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                                                                                     ^ keyword.operator.arithmetic.xpath
##                                                                                                      ^ constant.other.wildcard.asterisk.xpath
##                                                                                                       ^ punctuation.section.predicate.end.xpath

<xsl:value-of select="/element1/ns:element2/child::*[position() > 1 and substring-after(., 'hello world') = 'test(123)']/text()" />
##                   ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl meta.predicate.xpath
##                                                   ^^^^^^^^ meta.function-call.identifier.xpath - meta.function-call meta.function-call
##                                                           ^^ meta.function-call.arguments.xpath - meta.function-call meta.function-call - variable.function
##                                                                      ^^^^^^^^^^^^^^^ meta.function-call.identifier.xpath - meta.function-call meta.function-call
##                                                                                     ^^^^^^^^^^^^^^^^^^ meta.function-call.arguments.xpath - meta.function-call meta.function-call - variable.function
##                                                                                                          ^^^^^^^^^^^ meta.string.xpath - meta.function-call
##                                                                                                                      ^^^^^^^ meta.tag.xsl meta.string.xml source.xpath.embedded.xsl - meta.predicate
##                                                                                                                       ^^^^ meta.function-call.identifier.xpath - meta.function-call meta.function-call
##                                                                                                                           ^^ meta.function-call.arguments.xpath - meta.function-call meta.function-call
##                                                                                                                             ^ meta.tag.xsl meta.string.xml - source.xpath
##                    ^ punctuation.separator.path.xpath
##                     ^^^^^^^^ entity.name.tag.localname.xpath
##                             ^ punctuation.separator.path.xpath
##                              ^^ entity.name.tag.namespace.xpath
##                                ^ punctuation.separator.namespace.xpath
##                                 ^^^^^^^^ entity.name.tag.localname.xpath
##                                         ^ punctuation.separator.path.xpath
##                                          ^^^^^ constant.language.axis.xpath
##                                               ^^ punctuation.accessor.double-colon.xpath
##                                                 ^ constant.other.wildcard.asterisk.xpath
##                                                  ^ punctuation.section.predicate.begin.xpath
##                                                   ^^^^^^^^ variable.function.xpath
##                                                           ^ punctuation.section.arguments.begin.xpath
##                                                            ^ punctuation.section.arguments.end.xpath
##                                                              ^ keyword.operator.comparison.xpath
##                                                                ^ meta.number.integer.decimal.xpath constant.numeric.value.xpath
##                                                                  ^^^ keyword.operator.logical.xpath
##                                                                      ^^^^^^^^^^^^^^^ variable.function.xpath
##                                                                                     ^ punctuation.section.arguments.begin.xpath
##                                                                                      ^ variable.language.path.xpath
##                                                                                       ^ punctuation.separator.arguments.xpath
##                                                                                         ^^^^^^^^^^^^^ meta.string.xpath string.quoted.single.xpath
##                                                                                                      ^ punctuation.section.arguments.end.xpath
##                                                                                                        ^ keyword.operator.comparison.xpath
##                                                                                                          ^^^^^^^^^^^ string.quoted.single.xpath
##                                                                                                                     ^ punctuation.section.predicate.end.xpath
##                                                                                                                      ^ punctuation.separator.path.xpath
##                                                                                                                       ^^^^ support.function.kind-test.xpath
##                                                                                                                           ^ punctuation.section.arguments.begin.xpath
##                                                                                                                            ^ punctuation.section.arguments.end.xpath

<xsl:value-of select="$foo//bar/@baz gt 10" />
##                    ^ punctuation.definition.variable.xpath
##                     ^^^ variable.other.xpath
##                        ^^ punctuation.separator.path.xpath
##                          ^^^ entity.name.tag.localname.xpath
##                             ^ punctuation.separator.path.xpath
##                              ^ punctuation.definition.attribute.xpath
##                               ^^^ entity.other.attribute-name.localname.xpath
##                                   ^^ keyword.operator.comparison.xpath
##                                      ^^ constant.numeric.value.xpath

<xsl:value-of select="$ns:foo//ns:bar/@ns:baz gt 10" />
##                    ^ punctuation.definition.variable.xpath
##                     ^^ variable.namespace.xpath
##                       ^ punctuation.separator.namespace.xpath
##                        ^^^ variable.other.xpath
##                           ^^ punctuation.separator.path.xpath
##                             ^^ entity.name.tag.namespace.xpath
##                               ^ punctuation.separator.namespace.xpath
##                                ^^^ entity.name.tag.localname.xpath
##                                   ^ punctuation.separator.path.xpath
##                                    ^ punctuation.definition.attribute.xpath
##                                     ^^ entity.other.attribute-name.namespace.xpath
##                                       ^ punctuation.separator.namespace.xpath
##                                        ^^^ entity.other.attribute-name.localname.xpath
##                                            ^^ keyword.operator.comparison.xpath
##                                               ^^ constant.numeric.value.xpath
