title: Data processing with Python
output: 1-intro.html
theme: /home/as/wrk/seminar/cleaver-ribbon
author:
  name: "Alexander Sapozhnikov"
  was-twitter: "@shoorick77"
  email: as@susu.ru
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
<h2 class="shout shrink">Part 1</h2>
--
<figure>
    <img class="cover" src="images/Python_logo_and_wordmark.svg.png" alt="Python">
</figure>
--
## Why Python?
* Quite simple
* but powerful
* Popular
--
## How to run standalone Python interpreter

* Windows
  * Windows 10 — see WSL — Windows Subsystem for Linux
  * or see python.org → [Downloads](https://www.python.org/downloads/)
* UNIX like systems (macOS, Linux) — already installed
--
## Which version should we use?

* 2 — obsolete
* <mark>**3** — current</mark>
--
## Let's try to launch Python in terminal

<pre>
<code class="mark">$ python</code>
<code>Python 2.7.16 (default, Oct 10 2019, 22:02:15)</code>
<code>[GCC 8.3.0] on linux2</code>
<code>Type "help", "copyright", "credits" or "license" for more information.</code>
<code>&gt;&gt;&gt;</code>
</pre>
--
## Oops! Wrong version here

<pre>
<code class="mark">$ python</code>
<code>Python <mark class="important">2.7.16</mark> (default, Oct 10 2019, 22:02:15)</code>
<code>[GCC 8.3.0] on linux2</code>
<code>Type "help", "copyright", "credits" or "license" for more information.</code>
<code>&gt;&gt;&gt;</code>
</pre>
--
## There's a prompt

<pre>
<code class="mark">$ python</code>
<code>Python <mark>2.7.16</mark> (default, Oct 10 2019, 22:02:15)</code>
<code>[GCC 8.3.0] on linux2</code>
<code>Type "help", "copyright", "credits" or "license" for more information.</code>
<code><mark class="important">&gt;&gt;&gt;</mark></code>
</pre>
--
## How to exit?

<pre>
<code><mark>&gt;&gt;&gt;</mark> quit</code>
<code>Use quit() or Ctrl-D (i.e. EOF) to exit</code>
<code><mark>&gt;&gt;&gt;</mark> exit</code>
<code>Use exit() or Ctrl-D (i.e. EOF) to exit</code>
</pre>
--
## How to exit?

* Press <mark>Ctrl+D</mark>
* or <mark>Ctrl+Z</mark> on Windows
--
## Let's try again
<pre>
<code class="mark">$ python3</code>
<code>Python <mark class="important">3.7.3</mark> (default, Jul 25 2020, 13:03:44)</code>
<code>[GCC 8.3.0] on linux</code>
<code>Type "help", "copyright", "credits" or "license" for more information.</code>
<code>&gt;&gt;&gt;</code>
</pre>
--
## Type something
<pre>
<code class="mark">&gt;&gt;&gt; help</code>
<code>Type help() for interactive help, or help(object) for help about object.</code>
</pre>
--
## Get help
<pre>
<code class="mark">&gt;&gt;&gt; help()</code>
<code>Welcome to Python 3.7's help utility!</code>
<code> </code>
<code>If this is your first time using Python, you should definitely check out</code>
<code>the tutorial on the Internet at <a href="https://docs.python.org/3.7/tutorial/">https://docs.python.org/3.7/tutorial/</a>.</code>
<code> </code>
<code>Enter the name of any module, keyword, or topic to get help on writing</code>
</pre>
--
## Return from <code>help()</code> — press Ctrl+D
<pre>
<code class="mark">help&gt;</code>
<code>You are now leaving help and returning to the Python interpreter.</code>
<code>If you want to ask for help on a particular object directly from the</code>
<code>interpreter, you can type "help(object)".  Executing "help('string')"</code>
<code>has the same effect as typing a particular string at the help> prompt.</code>
<code class="mark">&gt;&gt;&gt;</code>
</pre>

--
## Type more
<pre>
<code class="mark">&gt;&gt;&gt; 2*2</code>
<code>4</code>
</pre>
--
## Type more
<pre>
<code>&gt;&gt;&gt; 2*2</code>
<code>4</code>
<code class="mark">&gt;&gt;&gt; 2*4+(3/5)**2</code>
<code>8.36</code>
</pre>
--
## REPL

### [Read–eval–print loop](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop)

--
## Get help
<pre>
<code class="mark">&gt;&gt;&gt; help(*)</code>
<code>  File "<stdin>", line 1</code>
<code>    help(*)</code>
<code>          ^</code>
<code><mark class="important">SyntaxError: invalid syntax</mark></code>
</pre>
--
## <code>help()</code> expects string
String must be enclosed with quotation marks

<pre>
<code><mark>'</mark>string<mark>'</mark></code>
<code><mark>"</mark>string<mark>"</mark></code>
</pre>
--
## Get help again
<pre>
<code class="mark">&gt;&gt;&gt; help('*')</code>
<code>Operator precedence</code>
<code>*******************</code>
<code> </code>
<code>The following table summarizes the operator precedence in Python, from</code>
<code>[ <em>skipped</em> ]</code>
<code>:</code>
</pre>
--
## Navigate through help page

* <mark>Enter ↲</mark> or <mark>↓</mark> arrow — next line
* <mark>↑</mark> arrow — previous line
* <mark>space</mark> — next page
* <mark>g</mark> — scroll to top
* <mark>G</mark> — scroll to bottom
* <mark>q</mark> — quit from help
--
## Some program

<pre>
<code class="mark">&gt;&gt;&gt; counter = 42</code>
<code class="mark">&gt;&gt;&gt; print("I've already wrote", counter, 'programs')</code>
<code>I've already wrote 42 programs</code>
</pre>
--
## Save our program to file

Now we can execute it
<pre>
<code class="mark">$ python3 program-counter.py</code>
<code>I've already wrote 42 programs</code>
</pre>
--
## Use .py extension

<pre>
<code>$ python3 program-counter<mark>.py</mark></code>
<code>I've already wrote 42 programs</code>
</pre>
--
## Alternative way
Search for Python interpreter

<pre>
<code class="mark">$ which python3</code>
<code>/usr/bin/python3</code>
</pre>

--
## Alternative way

Add <mark>shebang</mark> line as first line of your file

<pre>
<code><mark>#!</mark>/usr/bin/python3</code>
<code>counter = 42</code>
<code>print("I've already wrote", counter, 'programs')</code>
</pre>

--
## Alternative way

Make your program executable
<pre>
<code class="mark">$ chmod +x program-counter.py</code>
</pre>

Now you can run it
<pre>
<code class="mark">$ ./program-counter.py</code>
<code>I've already wrote 42 programs</code>
</pre>

--
## Editors and IDE
--
## Interactive programming environment
### [repl.it](https://repl.it/)
--
## Basic syntax
--
## Error messages
--
## Libraries overview
--
## Further reading

* `help()`
* docs.python.org
* pypi.org
* realpython.com
* cheat.sh
