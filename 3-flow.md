title: Data processing with Python
output: 3-flow.html
style: style.css
theme: /home/as/wrk/seminar/cleaver-ribbon
github-theme: shoorick/cleaver-ribbon
author:
  name: "Alexander Sapozhnikov, Tatyana Vasilieva"
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
<h2 class="shout shrink">Part 3</h2>
--
## Part 3
### Control flow and loops

* Conditional statement
* Loops and iterators

See also [docs.python.org / Tutorial / More Control Flow Tools](https://docs.python.org/3.7/tutorial/controlflow.html)
--
## Conditional statement

Colon and indent instead of curly braces for blocks

<pre>
<code>if (x &lt; 5)<mark>:</mark>
<mark>    </mark><span class="comment"># four spaces is recommended</span>
<mark>    </mark>print(x)</code>
</pre>
--
## Conditional statement

Parentheses around condition aren’t necessary

<pre>
<code>if <mark> </mark>x &lt; 5<mark> </mark>:
    <span class="comment"># omit parentheses</span>
    print(x)</code>
</pre>
--
## Conditional statement

Parentheses around condition aren’t necessary

<pre>
<code>if <mark>x &lt; 5</mark> and <mark>y &gt; 7</mark>:
    <span class="comment"># omit parentheses when possible</span>
    print(x)</code>
</pre>

--
## Else

<pre>
<code>if x &lt; 5:
    print(x)
<mark>else:</mark>
    <span class="comment"># otherwise</span>
    print(something_else)
</code>
</pre>
--
## else if → elif

<pre>
<code>if x &lt; 5:
    print('Few')
<mark class="green">elif</mark> x &gt; 9:
    <span class="comment"># second condition</span>
    print('Many')
else:
    print(something_else)
</code>
</pre>
--
## else if → elif

<pre>
<code>if x &lt; 5<mark>:</mark>
    print('Few')
elif x &gt; 9<mark>:</mark>
    <span class="comment"># second condition</span>
    print('Much')
else<mark>:</mark>
    print(something_else)
</code>
</pre>
--
## else if → elif

<div class="two columns">
<div>
<pre>
<code>if x &lt; 5<mark>:</mark>
    print('Few')
<mark class="green">elif</mark> x &gt; 9<mark>:</mark>
    print('Much')
<mark class="green">elif</mark> x &gt; 7<mark>:</mark>
    print('Not so much')
<mark class="green">elif</mark> z == 42<mark>:</mark>
</code>
</pre>
</div><div>
<br><br>
as many <code><mark class="green">elif</mark></code>s
<br>as you wish
</div></div>
--
## `=` is not a comparison operator

<pre>
<code>&gt;&gt;&gt; if z <mark class="important">=</mark> 7:
  File "<stdin>", line 1
    if z = 7:
         ^
SyntaxError: invalid syntax
</code>
</pre>

--
## `=` and `==`

### Assignment
<pre>
<code>z <mark class="orange">=</mark> 7
</code>
</pre>

### Comparison

<pre>
<code>if z <mark class="green">==</mark> 42:
    <span class="comment">print(z)</span>
</code>
</pre>
--
## Loops
  * for
  * while
  * with
--
## Assignment with if/else

<div class="two columns">
<div>
&nbsp;
<pre><code>if x &lt; 5:
    <mark>z</mark> = 'Few'
else:
    <mark>z</mark> = 'Many'
</code></pre></div>
</div>
--
## Assignment with if/else

<div class="two columns">
<div>

**instead of**

<pre><code>if x &lt; 5:
    <mark>z</mark> = 'Few'
else:
    <mark>z</mark> = 'Many'
</code></pre>
</div><div>

**write**

<div><pre><code><mark>z</mark> = 'Few' if x < 5 else 'Many'</code>
</pre>
</div>
</div>
--
## <mark>for</mark> loop

<pre><code>
for <mark class="orange">item</mark> in <mark class="green">sequence</mark>:
    <span class="comment"># do something</span>
</code></pre>
--
## Iterate through list

<pre><code>
people = ['Alice', 'Bob', 'Charlie']
for <mark class="orange">person</mark> in <mark class="green">people</mark>:
    print(person)
</code></pre>
--
## Iterate over range

<pre><code>
teen = range(13, 20)
for <mark class="orange">age</mark> in <mark class="green">teen</mark>:
    print(f'Age is {age}')
</code></pre>
--
## Iterate over range

<pre><code>
teen = range(13, 20)
for <mark class="orange">age</mark> in <mark class="green">teen</mark>:
    print(f'Age is {age}')

for <mark class="orange">i</mark> in <mark class="green">range(10)</mark>:
    do_something() <span class="comment"># ten times</span>
</code></pre>
--
## Counter name

`i`, `j`, `k` (and `x`, `y`, `z`) are good names for counter variables
<pre><code>
for <mark class="orange">x</mark> in width:
    for <mark>y</mark> in height:
        for <mark class="green">z</mark> in depth:
            do_something(<mark class="orange">x</mark>, <mark>y</mark>, <mark class="green">z</mark>)
</code></pre>
--
## How to iterate over several sequences simultaneously?

<pre><code>
<mark class="orange">colors</mark> = ['red',   'orange', 'yellow'  ]
<mark>people</mark> = ['Alice', 'Bob',    'Charlie' ]
<mark class="green">fruits</mark> = ['apple', 'banana', 'cucumber']
</code></pre>
--
## How to iterate over several sequences simultaneously?

<pre><code>
colors = [<mark class="blue">'red',  </mark> 'orange', 'yellow'  ]
people = [<mark class="blue">'Alice',</mark> 'Bob',    'Charlie' ]
fruits = [<mark class="blue">'apple',</mark> 'banana', 'cucumber']
</code></pre>
--
## How to iterate over several sequences simultaneously?

<pre><code>
colors = ['red',   <mark class="blue">'orange',</mark> 'yellow'  ]
people = ['Alice', <mark class="blue">'Bob',   </mark> 'Charlie' ]
fruits = ['apple', <mark class="blue">'banana',</mark> 'cucumber']
</code></pre>
--
## How to iterate over several sequences simultaneously?

<pre><code>
colors = ['red',   'orange', <mark class="blue">'yellow'  </mark>]
people = ['Alice', 'Bob',    <mark class="blue">'Charlie' </mark>]
fruits = ['apple', 'banana', <mark class="blue">'cucumber'</mark>]
</code></pre>
--
## zip

<pre>
<code>&gt;&gt;&gt; for <mark class="orange">color</mark>, <mark>name</mark>, <mark class="green">fruit</mark> in zip(<mark class="orange">colors</mark>, <mark>people</mark>, <mark class="green">fruits</mark>):
...     print(f'{<mark>name</mark>} has {<mark class="orange">color</mark>} {<mark class="green">fruit</mark>}')
...
Alice has red apple
<mark>Bob</mark> has <mark class="orange">orange</mark> <mark class="green">banana</mark>
Charlie</mark> has yellow cucumber
</code></pre>
--
## How to enumerate items?

1. First
2. Second
3. Third
4. Fourth
5. Fifth

--
## Example: chemical elements
```
>>> stuff = ['hydrogen', 'helium', 'lithium']
```

![name → value](images/periodic-table.dot.svg)
--
## Classic way
```
>>> stuff = ['hydrogen', 'helium', 'lithium']
>>> for i in range(len(stuff)):
...     print(i + 1, stuff[i])
...
1 hydrogen
2 helium
3 lithium
```
--
## Use zip and range for numbering

```
>>> for number, name in zip(range(1, len(stuff) + 1), stuff):
...     print(number, name)
...
1 hydrogen
2 helium
3 lithium
```
--
## enumerate
```
>>> for number, name in enumerate(stuff):
...     print(number, name)
...
0 hydrogen
1 helium
2 lithium
```
--
## enumerate

<pre>
<code>&gt;&gt;&gt; for number, name in enumerate(stuff, <mark>start=1</mark>):
...     print(number, name)
...
<mark>1</mark> hydrogen
<mark>2</mark> helium
<mark>3</mark> lithium
</code></pre>
