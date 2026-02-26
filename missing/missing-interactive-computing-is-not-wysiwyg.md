# Interactive computing is NOT WYSIWYG

Thirty years later, I realized that the excitement I experienced at the UNIX
tools class was actually about interactive computing.  Every keystroke I
typed, every output the terminal printed, every mistake I made and fixed had
huge impact on me.

Somehow along the way, this interactivity was replaced by the concept of
WYSIWYG (What You See Is What You Get).

We moved from Typewriters to Word Processors.  Editor as a profession becomes
editor as a machine, just like Computer as a profession becomes computer as a
machine.

## APL demonstration 1975

Here is an example of non-WYSIWIG interactive computing with [typewriter
terminal](https://aplwiki.com/wiki/Typewriter_terminal).

[![APL.png](APL.png)](https://www.youtube.com/watch?v=_DTpQ4Kk2wA)


Here is an excerpt of [Interview with Dr. Ken Iverson
(1982)](https://www.arraycast.com/2024/11/09/Dr-Ken-Iverson.html):

> It’s a printing terminal, and so it sounds and looks just like a typewriter.
> It’s not what most people use these days. I still find it the most
> convenient, although I use the others as well, primarily because a lot of
> the work that I do, I want to be able to actually have it printed, rip it
> off, lay it on my desk, and pour over it and modify it and so on. And to do
> the equivalent thing with the screens, the cathode ray tube screens, I don’t
> find anywhere near as convenient.

So this is not batch computing in the sense of submitting a deck of punch cards
to the machine and waiting for the output but interactive workflow like a
writer typing on a typewriter, reviewing, making corrections and repeating.
This process is also called Read-Eval-Print Loop
([REPL](https://en.wikipedia.org/wiki/Read–eval–print_loop)).

Another interesting side effect of this workflow is that it distinguishes
**input** from **output**. In UNIX system, the concepts of `stdin`, `stdout`
and `stderr` are not just for machine operation, but also for the user to make
a distinguish between them and therefore to have a concept of dataflow. This
becomes the foundation of [UNIX
pipe](https://en.wikipedia.org/wiki/Pipeline_(Unix)).

(For Rust reference, see [std::io::stdin], [std::io::stdout], [std::io::stderr]
and [std::process::Stdio::piped].)

This is covered in [[Lecture 1]: Course Overview + Introduction to the
Shell](https://missing.csail.mit.edu/2026/course-shell/).

