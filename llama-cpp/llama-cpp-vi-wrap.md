```text
▄▄ ▄▄
██ ██
██ ██  ▀▀█▄ ███▄███▄  ▀▀█▄    ▄████ ████▄ ████▄
██ ██ ▄█▀██ ██ ██ ██ ▄█▀██    ██    ██ ██ ██ ██
██ ██ ▀█▄██ ██ ██ ██ ▀█▄██ ██ ▀████ ████▀ ████▀
                                    ██    ██
                                    ▀▀    ▀▀

build      : b8146-418dea39c
model      : ggml-org/gpt-oss-20b-GGUF
modalities : text

available commands:
  /exit or Ctrl+C     stop or exit
  /regen              regenerate the last response
  /clear              clear the chat history
  /read               add a text file


> What is the command to wrap the current line to 78 characters in vi?

[Start thinking]
We need to answer: In vi, to wrap current line to 78 characters. The user likely wants to use a command: `gq` to format text, and set textwidth to 78. So you can do `:set textwidth=78` and then `gqap` or `gqq`. But the question: "What is the command to wrap the current line to 78 characters in vi?" So answer: `:set textwidth=78` then `gqq`. Or you could use `:set tw=78 | normal gq`. But perhaps a one-liner: `:set tw=78 | normal gqq`. But maybe the specific command: `:set tw=78` then `gqj`? Actually `gq` on a line: `gq` with a motion. For current line, use `gqj` or `gqq`. `gqq` formats current paragraph. But for just the current line: `gq$`? Actually to reformat current line: `gq` followed by a motion that covers the line. `gq` with `j` would format current and next line. For just current line: `gq` followed by `k` or `j`? Actually you can use `gq` with a line number: `gq` then `:`. Wait: In normal mode, you can type `gq` then `j` to format current and next line; `gq` then `k` to format previous and current. To just format the current line, use `gq` then `j` and then `k`? No. Actually there is `gq` with a motion: e.g., `gq$` will format from cursor to end of line. But to format entire line, `gq` then `j`? Hmm.

But typical answer: set textwidth and then `gq` on the line. So I'd answer: `:set textwidth=78 | normal! gq`. But more straightforward: `:set tw=78` and then `gq` on the line. So answer: `:set tw=78` then `gqq` (or `gq` with motion). The question probably expects: `:set textwidth=78 | normal gq`. But simpler: `:set tw=78` and then `gq`. But the command: `:set tw=78 | normal gq` or `:set tw=78 | normal gqq`? Actually `gq` needs a motion; `gqq` formats the current paragraph. If just line, use `gq` with `$` or `j`. So `gq$`? But that might format from cursor to end of line; if cursor at start, it's entire line. So answer: `:set tw=78` then `gq$`. But the question: "What is the command to wrap the current line to 78 characters in vi?" Likely answer: `:set tw=78 | normal gq`. But maybe the answer: `:set tw=78 | gq`. But you need motion. So the easiest: `:set tw=78` then `gqq` will reformat current paragraph. But if you only want current line, you can do `gq$` or `gqj`.

I'll answer: Set textwidth and use gq:

```

```text
:set tw=78
gq$
```

Or single-line: `:set tw=78 | normal gq$`. Also mention `gqq` if you want paragraph. So answer accordingly.
[End thinking]

In Vim/vi you need to tell the formatter what width to use, and then run the **`gq`** command on the line.  
A quick one‑liner is:

```vim
:set tw=78 | normal! gq$
```

Explanation

* `:set tw=78` – sets the *textwidth* (the column at which lines should wrap) to 78.  
* `normal! gq$` – in normal mode, `gq` is the “reformat” command; the `$` motion tells it to re‑format from the cursor to the end of the line (so if your cursor is at the start of the line it will re‑format the whole line).

If you prefer a two‑step approach:

```vim
:set tw=78      " set the width
gq$             " re‑format the current line
```

(If you’d like to re‑format the whole paragraph instead of just one line, you could use `gqq` instead of `gq$`.)

```text
[ Prompt: 260.0 t/s | Generation: 29.8 t/s ]
```
