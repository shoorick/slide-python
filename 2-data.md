title: Data processing with Python
output: 2-data.html
style: style.css
theme: /home/as/wrk/seminar/cleaver-ribbon
github-theme: shoorick/cleaver-ribbon
author:
  name: "Alexander Sapozhnikov, Tatyana Vasilyeva"
  company: "South Ural State University"
  twitter: "@shoorick77"
  url: "https://as.susu.ru"
-- title clear
## Data processing with Python
<figure>
    <img class="cover" src="images/baumpython-cropped.jpg" alt="Python">
    <figcaption class="copyright right white">
        © Mike Wesemann
    </figcaption>
</figure>
-- clear
<h2 class="shout shrink">Part 2</h2>
--
## Part 2
* Data types
* Objects
* Variables
* Control flow and loops
--
## Documentation

* `help()`
--
## Navigate through help page

* <mark>Enter ↲</mark> or <mark>↓</mark> arrow — next line
* <mark>↑</mark> arrow — previous line
* <mark>space</mark> — next page
* <mark>g</mark> — scroll to top
* <mark>G</mark> — scroll to bottom
* <mark>q</mark> — quit from help
--
## Documentation

* `help()`
* [docs.python.org](https://docs.python.org)
* cheat.sh
  * [cheat.sh/python](http://cheat.sh/python) — how to run
    * [cheat.sh/python/:list](http://cheat.sh/python/:list) — list of pages
    * [cheat.sh/python/:learn](http://cheat.sh/python/:learn) — learn Python — comprehensive page
    * [cheat.sh/python/~keyword](http://cheat.sh/python/~keyword) — search in pages for <mark>keyword</mark>
--
## Interactive programming environments
* [repl.it](https://repl.it/)
* [pythonfiddle.com](http://pythonfiddle.com/)
-- black clear
<img class="cover" src="images/repl-hello-world.png" alt="repl.it">
--
## Syntax peculiarities

No semicolon <mark>;</mark> after single statement

```
counter = 42
```
--
## Syntax peculiarities

Colon and indent instead of curly braces for blocks

<pre>
<code>for fruit in basket<mark class="important">:</mark></code>
<code><mark>    </mark># four spaces is recommended</code>
<code><mark>    </mark>print(fruit)</code>
</pre>
--
## Syntax peculiarities

Colon and indent instead of curly braces for blocks

<pre>
<code>for fruit in basket<mark>:</mark></code>
<code><mark class="important">    </mark># four spaces is recommended</code>
<code><mark class="important">    </mark>print(fruit)</code>
</pre>
--
<h2 class="shout">Python is case sensitive</h2>
--
## Python is case sensitive

<pre style="font-size:600%;margin-top:.5em">
<code>A ≠ a</code>
</pre>
--
## Interactive mode
<pre>
<code><mark>&gt;&gt;&gt;</mark></code>
<code>↑ prompt</code>
</pre>
--
## Interactive mode
<pre>
<code>&gt;&gt;&gt; <mark>42 + 24</mark></code>
<code>our input ↑</code>
</pre>
--
## Interactive mode
<pre>
<code>&gt;&gt;&gt; 42 + 24</code>
<code><mark>66</mark> ← result</code>
</pre>
--
## Oops
<pre>
<code>&gt;&gt;&gt; 42 + 'e'</code>
<code class="mark">Traceback (most recent call last):</code>
<code class="mark">  File "<stdin>", line 1, in &lt;module&gt;</code>
<code class="mark">TypeError: unsupported operand type(s) for +: 'int' and 'str'</code>
<code>↑ error messages</code>
</pre>
--
<h2 class="shout">Data types</h2>
--
## Built-in data types

* int, float, complex
* bool
* list, tuple, dict, set, range, zip
* str

See also [docs.python.org/3.7/library/stdtypes](https://docs.python.org/3.7/library/stdtypes.html)
--
## Built-in data types

* __int__eger, __float__, __complex__ — _numeric_
* __bool__ean — _logical_
* __list__, __tuple__, __dict__ionary, __set__, __range__, __zip__ — _structures_
* __str__ing — _chain of characters_

See also [docs.python.org/3.7/library/stdtypes](https://docs.python.org/3.7/library/stdtypes.html)
--
## Detect <mark>type</mark> of data

<pre>
<code class="mark">&gt;&gt;&gt; type(42)</code>
<code>&lt;class 'int'&gt;</code>
</pre>
--
## Detect type of data

<pre>
<code>&gt;&gt;&gt; type(42)</code>
<code>&lt;class 'int'&gt;</code>
<code class="mark">&gt;&gt;&gt; type(3.14)</code>
<code>&lt;class 'float'&gt;</code>
</pre>
--
## Detect type of data

<pre>
<code>&gt;&gt;&gt; type(42)</code>
<code>&lt;class 'int'&gt;</code>
<code>&gt;&gt;&gt; type(3.14)</code>
<code>&lt;class 'float'&gt;</code>
<code class="mark">&gt;&gt;&gt; type('3.14')</code>
<code>&lt;class 'str'&gt;</code>
</pre>
--
## int

integer number

```
>>> type(42)
<class 'int'>
```
--
## Underscores for long numbers

<pre>
<code class="next">&gt;&gt;&gt; 4_294_967_296     <span class="comment"># 2<sup>32</sup></span></code>
<code class="next">4294967296</code>
<code class="next">&gt;&gt;&gt; +7_800_775_00_00  <span class="comment"># even phone numbers</span></code>
<code class="next">78007750000</code>
</pre>
--
## int can use various bases

<pre>
<code class="next">&gt;&gt;&gt; 0xC0FFEE  <span class="comment"># hexadecimal</span></code>
<code class="next">12648430</code>
<code class="next">&gt;&gt;&gt; 0o777     <span class="comment"># octal</span></code>
<code class="next">511</code>
<code class="next">&gt;&gt;&gt; 0b1111    <span class="comment"># binary</span></code>
<code class="next">15</code>
</pre>
--
## float

Floating point number

<pre>
<code class="next">&gt;&gt;&gt; 3.1415926</code>
<code class="next">3.1415926</code>
<code class="next">&gt;&gt;&gt; 9.</code>
<code class="next">9.0</code>
<code class="next">&gt;&gt;&gt; 3e8</code>
<code class="next">300000000.0</code>
</pre>
--
## float

`3e8` = 3 × 10<sup>8</sup> = 300000000.0 <em class="comment"># light speed, meters per second</em>

`125e-3` = 125 × 10<sup>−3</sup> = 0.125

<pre>
<code class="next">&gt;&gt;&gt; 6.022e23 <span class="comment"># Avogadro constant, mol<sup>−1</sup></span></code>
<code class="next">6.022e+23</code>
</pre>

--
## Change type

Use name of type as function to convert data

<pre>
<code class="next">&gt;&gt;&gt; int(3.1415926)</code>
<code class="next">3</code>
<code class="next">&gt;&gt;&gt; float(42)</code>
<code class="next">42.0</code>
</pre>

--
## Implicit type changing

<pre>
<code class="next">&gt;&gt;&gt; 3. + 2</code>
<code class="next">5.0</code>
<code class="next">&gt;&gt;&gt; 3 + 2.</code>
<code class="next">5.0</code>
</pre>
--
## str

__string__ is the sequence of characters

<img src="images/str.png" alt="string">
--
## Individual characters are accessible

<img src="images/str-i.png" alt="string with highlighted i">

```
>>> 'some'[3]
'e'
```
--
## as well as whole string

<img src="images/str-string.png" alt="highlighted string">

```
>>> 'some'.upper()
'SOME'
```
--
## String subtypes

```
>>> 'Generic' or "common"
'Generic'
```
--
## Special characters

```
>>> 'B letter \x42'
'B letter B'
>>> "\x53ame behavior with double quotation marks"
'Same behavior with double quotation marks'
>>> 'Unicode: питон — это змея 🐍 蛇'
'Unicode: питон — это змея 🐍 蛇'
```
--
## Special characters

C-like notation

* <code>\n</code> — new line (LF — line feed)
* <code>\r</code> — carriage return (CR)
* <code>\xNN</code> — character having hexadecimal ASCII code <var>NN</var>

---
## Use """triple delimiters""" to make multiple lines

```
>>> """
... Multiline strings
... often used as comments
... """
'\nMultiline strings\noften used as comments\n'
```
---
## '''Triple delimiters'''

```
>>> '''
... These strings can contain
... 'single' or "double" quotation marks
... '''
'\nThese strings can contain\n\'single\' or "double" quotation marks\n'
```
--
## Special characters

C-like notation

* <code>\n</code> — new line (LF — line feed)
* <code>\r</code> — carriage return (CR)
* <code>\xNN</code> — character having hexadecimal ASCII code <var>NN</var>

```
>>> '\xAB'
'«'
```
--
## Special characters

What about small Russian letter “ef”? Its hexadecimal code is 444.

```
>>> '\x444'
'D4'
```
--
## Special characters

What about small Russian letter “ef”? Its hexadecimal code is 444.

<pre>
<code>&gt;&gt;&gt; '<mark>\x44</mark>4'</code>
<code>'D4'</code>
</pre>
--
## Unicode characters
```
>>> '\u444'
  File "<stdin>", line 1
SyntaxError: (unicode error) 'unicodeescape' codec can't decode bytes in position 0-4: truncated \uXXXX escape
>>> '\u0444'
'ф'
>>> '\x01f41b'
'ὁb'
```
--
## Unicode characters above U+FFFF
```
>>> '\U1f41b'
  File "<stdin>", line 1
SyntaxError: (unicode error) 'unicodeescape' codec can't decode bytes in position 0-6: truncated \UXXXXXXXX escape
>>> '\U0001f41b'
'🐛'
```
--
## Unicode strings — u''

* <mark>Same as generic string — Python 3</mark>
* Different subtype — Python 2

```
>>> u'日'
'日'

```
--
## Byte strings — b''

* <mark>ASCII only — Python 3</mark>
* Same as generic string which treats as byte sequence — Python 2

```
>>> b'Byte'
b'Byte'
>>> b'Жи-ши'
  File "<stdin>", line 1
SyntaxError: bytes can only contain ASCII literal characters.
```
--
## Escape backslash

Just double it

```
>>> print('\\back')
\back
```

--
## Raw strings — r''

There are no special characters

```
>>> r'\back\slash'
'\\back\\slash'
```
--
## Raw strings

There are no special characters

```
>>> r'\back\slash'
'\\back\\slash'
>>> r'^\S+ome\regular\expr\e\s\Sio\n{7}'
'^\\S+ome\\regular\\expr\\e\\s\\Sio\\n{7}'
```

See also [re — Regular expression operations](https://docs.python.org/3.7/library/re.html)

--
## Raw strings

There are no special characters

```
>>> r'\back\slash'
'\\back\\slash'
>>> r'^\S+ome\regular\expr\e\s\Sio\n{7}'
'^\\S+ome\\regular\\expr\\e\\s\\Sio\\n{7}'
>>> r'C:\Windows\system32\drivers\hosts.txt'
'C:\\Windows\\system32\\drivers\\hosts.txt'
```
--
## Raw strings with triple delimiters

```
>>> r'''
... TenorI = \context Voice = TenorI {
...     \global
...     \dynamicUp \stemUp \slurUp \tieUp
...     \tempo Moderato
... '''
'\nTenorI = \\context Voice = TenorI {\n    \\global\n    \\dynamicUp \\stemUp \\slurUp \\tieUp\n    \\tempo Moderato\n'
```
-- clear

<img alt="Frescobaldi" src="images/frescobaldi.png" class="cover">

--
## Format strings — f''

```
>>> pi = 3.14159265358
>>> f'π is {pi}'
'π is 3.14159265358'
```

Since 2015 — Python 3.6. See also [realpython.com/python-f-strings](https://realpython.com/python-f-strings/)
--
## Concatenate strings with +

```
>>> 'head ' + 'and' + ' tail'
'head and tail'
```
--
## Concatenate strings with +
```
>>> 3 + ' is three'
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: unsupported operand type(s) for +: 'int' and 'str'
>>> str(3) + ' is three'
'3 is three'
```
--
## list

--
## tuple

--
## dict

--
## set

--
## range

--
## bool
--
## Range

```
>>> teen = range(13, 20)
```

Mathematically, <var>t</var> = [13, 20)
--
## Range

```
>>> teen = range(13, 20)
```

Mathematically, <var>t</var> = <mark>[</mark>13, 20<mark class="important">)</mark>

include 13 and <mark>exclude</mark> 20
--
## Print range

```
>>> teen = range(13, 20)
>>> teen
range(13, 20)
```

--
## Print range

```
>>> for age in teen: print(age, end=', ')
...
13, 14, 15, 16, 17, 18, 19,
```
--
## Range with step

```
>>> for item in range(0, 100, 9): print(item, end=', ')
...
0, 9, 18, 27, 36, 45, 54, 63, 72, 81, 90, 99,
```
--
## Range with negative step

```
>>> for item in range(3, 0, -1): print(item, end=', ')
...
3, 2, 1,
```
--
## Range with negative step

```
>>> for item in range(3, 0, -1): print(item, end=', ')
...
3, 2, 1,
```

<div class="spotlight" style="
    --spotlight-radius: 50%;
    --spotlight-opacity: 0.2;
    --spotlight-size: 256px;
    --spotlight-top: 0px;
    --spotlight-left: -256px;
"></div>

### No zero here

--
<h2 class="shout">Variables</h2>
--
## Variables

### Assigning

```
name = 'value'
```

![name → value](images/var-name-value.dot.svg)
--
## Assign a new value

```
name = 'value'
name = 42
```


![name → value](images/var-name-42.dot.svg)

--

## Variable naming

> There are only two hard things in Computer Science:<br>
> cache invalidation and naming things.

--

## Variable naming

Available characters are:

* Small and capital Latin letters **a** to **z** and **A** to **Z**
* Digits (not in first position)
* Underscore `_`

```
>>> theSun_and_8_planets = 'solar'
```

--

## Variable naming

Python 3 allows to use some non-ASCII letters but <mark>it’s a wrong way</mark>

```
>>> Öl = 'Barrel.'
>>> print(Öl * 3)
Barrel.Barrel.Barrel.
>>> Ø = 0
>>> Ж = 8
>>> Зима = 'Winter'
```
--

## Don’t do that

```
>>> ქ = 'khar'
>>> ձ = 'ja'
>>> ж = 'zhe'
>>> ξ = 'xi'
>>> ש = 'shin'
>>> ش = 'sheen'
```
--

## Don’t do that

```
>>> o = 'Latin'
>>> ο = 'Greek'
>>> о = 'Cyrillic'
>>> օ = 'Armenian'
>>> ჿ = 'Georgian'
>>> print(o, ο, о, օ, ჿ)
Latin Greek Cyrillic Armenian Georgian
```
--
## Non-letters are forbidden

```
>>> × = 'multiply'
  File "<stdin>", line 1
    × = 'multiply'
    ^
```
--
## Non-letters are forbidden

```
>>> ⼤ = 'big'
  File "<stdin>", line 1
    ⼤ = 'big'
    ^
SyntaxError: invalid character in identifier
```

--
<h2 class="shout">Objects and classes</h2>
--
##
--
## Control flow and loops
* for
* while
--
## <mark>for</mark> loop
