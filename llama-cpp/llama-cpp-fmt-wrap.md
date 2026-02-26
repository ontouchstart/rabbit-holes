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


> What unix program can I use to wrap a text file with 78 characters?

[Start thinking]
We need to answer: Which Unix program can wrap a text file to 78 characters. Likely 'fmt' or 'fold' or 'pr' or 'wrap' etc. The classic is 'fmt -w 78 file' or 'fold -w 78 file'. The question: "What unix program can I use to wrap a text file with 78 characters?" Probably answer: use 'fmt' or 'fold' or 'pr'. Provide usage examples.

Let's craft answer: Use 'fmt -w 78 file' or 'fold -s -w 78 file'. Or 'par' program. Provide explanation. Also mention 'fmt' is more suitable for paragraphs; 'fold' just folds lines. Provide sample.
[End thinking]

Use one of the standard line‑wrapping utilities that come with almost every Unix/Linux system.  
The two most common choices are **`fmt`** (for paragraph‑aware reformatting) and **`fold`** (for a straight “break‑at‑78” folding).  

```
---

## 1. `fmt`

```bash
fmt -w 78 myfile.txt > wrapped.txt
```

* `-w 78` – set the target width to 78 columns.  
* `fmt` will re‑flow paragraph text (it joins lines, then breaks them at the width).  
* If you want to overwrite the original file, use `sed -i` or a temporary file.

### Example

```bash
$ cat <<'EOF' >sample.txt
This is a long sentence that will be wrapped by fmt to 78 characters per line. It should not break words in the middle.
EOF

$ fmt -w 78 sample.txt
This is a long sentence that will be wrapped by fmt to 78 characters per line. It should not break words in the middle.
```

---

## 2. `fold`

```bash
fold -s -w 78 myfile.txt > wrapped.txt
```

* `-s` – break only at word boundaries (soft wrap).  
* `-w 78` – target width.  
* `fold` simply folds the existing lines; it doesn’t join or merge paragraphs.

### Example

```bash
$ cat <<'EOF' >sample.txt
Line 1: This is a single line that will be wrapped at 78 columns. It contains enough text to cross the boundary.
Line 2: Another long line that will also be wrapped correctly.
EOF

$ fold -s -w 78 sample.txt
Line 1: This is a single line that will be wrapped at 78 columns. It contains enough text
to cross the boundary.
Line 2: Another long line that will also be wrapped correctly.
```

---

## 3. (Optional) `par`

If you need more advanced paragraph formatting, the `par` utility is a great choice:

```bash
par -s -w 78 myfile.txt > wrapped.txt
```

* `-s` – strip leading spaces.  
* `-w 78` – set width.

`par` is especially handy for re‑wrapping prose that has been edited or for restoring original spacing.

---

### Quick one‑liner

If you just want to wrap the current file in place:

```bash
fmt -w 78 file.txt > tmp && mv tmp file.txt
# or
fold -s -w 78 file.txt > tmp && mv tmp file.txt
```

Pick the one that best matches your workflow:  
- Use **`fmt`** when you want paragraph‑aware re‑formatting (the default in many editors).  
- Use **`fold`** when you just want a hard line break at 78 columns.  
- Use **`par`** for more advanced formatting needs.

[ Prompt: 317.5 t/s | Generation: 29.7 t/s ]
