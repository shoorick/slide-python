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
* Control flow and loops
--
## Control flow and loops
* for
* while
--
## <mark>for</mark> loop

--

--
## zip

```
>>> colors = ['red', 'orange', 'yellow']
>>> people = ['Alice', 'Bob', 'Charlie']
>>> fruits = ['apple', 'banana', 'cucumber']
```
--
## enumerate

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
