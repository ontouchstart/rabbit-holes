https://huggingface.co/unsloth/gpt-oss-20b-GGUF

```log
sam@Sams-MacBook-Pro rabbit-holes % make -C llama-cpp/models/unsloth/gpt-oss-20b-GGUF server
../../../ggml-org/llama.cpp/build/bin/llama-server -hf unsloth/gpt-oss-20b-GGUF 
ggml_metal_device_init: testing tensor API for f16 support
ggml_metal_library_compile_pipeline: compiling pipeline: base = 'dummy_kernel', name = 'dummy_kernel'
ggml_metal_library_compile_pipeline: loaded dummy_kernel                                  0x101bfb320 | th_max = 1024 | th_width =   32
ggml_metal_device_init: testing tensor API for bfloat support
ggml_metal_library_compile_pipeline: compiling pipeline: base = 'dummy_kernel', name = 'dummy_kernel'
ggml_metal_library_compile_pipeline: loaded dummy_kernel                                  0x101bfaca0 | th_max = 1024 | th_width =   32
ggml_metal_library_init: using embedded metal library
ggml_metal_library_init: loaded in 0.009 sec
ggml_metal_rsets_init: creating a residency set collection (keep_alive = 180 s)
ggml_metal_device_init: GPU name:   MTL0
ggml_metal_device_init: GPU family: MTLGPUFamilyApple10  (1010)
ggml_metal_device_init: GPU family: MTLGPUFamilyCommon3 (3003)
ggml_metal_device_init: GPU family: MTLGPUFamilyMetal4  (5002)
ggml_metal_device_init: simdgroup reduction   = true
ggml_metal_device_init: simdgroup matrix mul. = true
ggml_metal_device_init: has unified memory    = true
ggml_metal_device_init: has bfloat            = true
ggml_metal_device_init: has tensor            = true
ggml_metal_device_init: use residency sets    = true
ggml_metal_device_init: use shared buffers    = true
ggml_metal_device_init: recommendedMaxWorkingSetSize  = 19069.67 MB
common_download_file_single_online: no previous model file found /Users/sam/Library/Caches/llama.cpp/unsloth_gpt-oss-20b-GGUF_preset.ini
common_download_file_single_online: HEAD failed, status: 404
no remote preset found, skipping
common_download_file_single_online: using cached file (same etag): /Users/sam/Library/Caches/llama.cpp/unsloth_gpt-oss-20b-GGUF_gpt-oss-20b-Q4_K_M.gguf
main: n_parallel is set to auto, using n_parallel = 4 and kv_unified = true
build: 8198 (7f5ee5496) with AppleClang 17.0.0.17000404 for Darwin arm64
system info: n_threads = 4, n_threads_batch = 4, total_threads = 10

system_info: n_threads = 4 (n_threads_batch = 4) / 10 | MTL : EMBED_LIBRARY = 1 | CPU : NEON = 1 | ARM_FMA = 1 | FP16_VA = 1 | MATMUL_INT8 = 1 | DOTPROD = 1 | SME = 1 | ACCELERATE = 1 | REPACK = 1 | 

Running without SSL
init: using 9 threads for HTTP server
start: binding port with default address family
main: loading model
srv    load_model: loading model '/Users/sam/Library/Caches/llama.cpp/unsloth_gpt-oss-20b-GGUF_gpt-oss-20b-Q4_K_M.gguf'
common_init_result: fitting params to device memory, for bugs during this step try to reproduce them with -fit off, or provide --verbose logs if the bug only occurs with -fit on
llama_params_fit_impl: projected to use 14210 MiB of device memory vs. 18185 MiB of free device memory
llama_params_fit_impl: will leave 3974 >= 1024 MiB of free device memory, no changes needed
llama_params_fit: successfully fit params to free device memory
llama_params_fit: fitting params to free memory took 0.39 seconds
llama_model_load_from_file_impl: using device MTL0 (Apple M5) (unknown id) - 18185 MiB free
llama_model_loader: loaded meta data with 37 key-value pairs and 459 tensors from /Users/sam/Library/Caches/llama.cpp/unsloth_gpt-oss-20b-GGUF_gpt-oss-20b-Q4_K_M.gguf (version GGUF V3 (latest))
llama_model_loader: Dumping metadata keys/values. Note: KV overrides do not apply in this output.
llama_model_loader: - kv   0:                       general.architecture str              = gpt-oss
llama_model_loader: - kv   1:                               general.type str              = model
llama_model_loader: - kv   2:                               general.name str              = Gpt-Oss-20B
llama_model_loader: - kv   3:                           general.basename str              = Gpt-Oss-20B
llama_model_loader: - kv   4:                       general.quantized_by str              = Unsloth
llama_model_loader: - kv   5:                         general.size_label str              = 20B
llama_model_loader: - kv   6:                            general.license str              = apache-2.0
llama_model_loader: - kv   7:                           general.repo_url str              = https://huggingface.co/unsloth
llama_model_loader: - kv   8:                               general.tags arr[str,2]       = ["vllm", "text-generation"]
llama_model_loader: - kv   9:                        gpt-oss.block_count u32              = 24
llama_model_loader: - kv  10:                     gpt-oss.context_length u32              = 131072
llama_model_loader: - kv  11:                   gpt-oss.embedding_length u32              = 2880
llama_model_loader: - kv  12:                gpt-oss.feed_forward_length u32              = 2880
llama_model_loader: - kv  13:               gpt-oss.attention.head_count u32              = 64
llama_model_loader: - kv  14:            gpt-oss.attention.head_count_kv u32              = 8
llama_model_loader: - kv  15:                     gpt-oss.rope.freq_base f32              = 150000.000000
llama_model_loader: - kv  16:   gpt-oss.attention.layer_norm_rms_epsilon f32              = 0.000010
llama_model_loader: - kv  17:                       gpt-oss.expert_count u32              = 32
llama_model_loader: - kv  18:                  gpt-oss.expert_used_count u32              = 4
llama_model_loader: - kv  19:               gpt-oss.attention.key_length u32              = 64
llama_model_loader: - kv  20:             gpt-oss.attention.value_length u32              = 64
llama_model_loader: - kv  21:           gpt-oss.attention.sliding_window u32              = 128
llama_model_loader: - kv  22:         gpt-oss.expert_feed_forward_length u32              = 2880
llama_model_loader: - kv  23:                  gpt-oss.rope.scaling.type str              = yarn
llama_model_loader: - kv  24:                gpt-oss.rope.scaling.factor f32              = 32.000000
llama_model_loader: - kv  25: gpt-oss.rope.scaling.original_context_length u32              = 4096
llama_model_loader: - kv  26:                       tokenizer.ggml.model str              = gpt2
llama_model_loader: - kv  27:                         tokenizer.ggml.pre str              = gpt-4o
llama_model_loader: - kv  28:                      tokenizer.ggml.tokens arr[str,201088]  = ["!", "\"", "#", "$", "%", "&", "'", ...
llama_model_loader: - kv  29:                  tokenizer.ggml.token_type arr[i32,201088]  = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ...
llama_model_loader: - kv  30:                      tokenizer.ggml.merges arr[str,446189]  = ["Ġ Ġ", "Ġ ĠĠĠ", "ĠĠ ĠĠ", "...
llama_model_loader: - kv  31:                tokenizer.ggml.bos_token_id u32              = 199998
llama_model_loader: - kv  32:                tokenizer.ggml.eos_token_id u32              = 200002
llama_model_loader: - kv  33:            tokenizer.ggml.padding_token_id u32              = 200017
llama_model_loader: - kv  34:                    tokenizer.chat_template str              = {# Chat template fixes by Unsloth #}\n...
llama_model_loader: - kv  35:               general.quantization_version u32              = 2
llama_model_loader: - kv  36:                          general.file_type u32              = 15
llama_model_loader: - type  f32:  289 tensors
llama_model_loader: - type q5_0:   61 tensors
llama_model_loader: - type q8_0:   13 tensors
llama_model_loader: - type q4_K:   24 tensors
llama_model_loader: - type mxfp4:   72 tensors
print_info: file format = GGUF V3 (latest)
print_info: file type   = Q4_K - Medium
print_info: file size   = 10.81 GiB (4.44 BPW) 
load: 0 unused tokens
load: setting token '<|message|>' (200008) attribute to USER_DEFINED (16), old attributes: 8
load: setting token '<|constrain|>' (200003) attribute to USER_DEFINED (16), old attributes: 8
load: setting token '<|channel|>' (200005) attribute to USER_DEFINED (16), old attributes: 8
load: setting token '<|start|>' (200006) attribute to USER_DEFINED (16), old attributes: 8
load: printing all EOG tokens:
load:   - 199999 ('<|endoftext|>')
load:   - 200002 ('<|return|>')
load:   - 200007 ('<|end|>')
load:   - 200012 ('<|call|>')
load: special_eog_ids contains both '<|return|>' and '<|call|>', or '<|calls|>' and '<|flush|>' tokens, removing '<|end|>' token from EOG list
load: special tokens cache size = 21
load: token to piece cache size = 1.3332 MB
print_info: arch                  = gpt-oss
print_info: vocab_only            = 0
print_info: no_alloc              = 0
print_info: n_ctx_train           = 131072
print_info: n_embd                = 2880
print_info: n_embd_inp            = 2880
print_info: n_layer               = 24
print_info: n_head                = 64
print_info: n_head_kv             = 8
print_info: n_rot                 = 64
print_info: n_swa                 = 128
print_info: is_swa_any            = 1
print_info: n_embd_head_k         = 64
print_info: n_embd_head_v         = 64
print_info: n_gqa                 = 8
print_info: n_embd_k_gqa          = 512
print_info: n_embd_v_gqa          = 512
print_info: f_norm_eps            = 0.0e+00
print_info: f_norm_rms_eps        = 1.0e-05
print_info: f_clamp_kqv           = 0.0e+00
print_info: f_max_alibi_bias      = 0.0e+00
print_info: f_logit_scale         = 0.0e+00
print_info: f_attn_scale          = 0.0e+00
print_info: n_ff                  = 2880
print_info: n_expert              = 32
print_info: n_expert_used         = 4
print_info: n_expert_groups       = 0
print_info: n_group_used          = 0
print_info: causal attn           = 1
print_info: pooling type          = 0
print_info: rope type             = 2
print_info: rope scaling          = yarn
print_info: freq_base_train       = 150000.0
print_info: freq_scale_train      = 0.03125
print_info: freq_base_swa         = 150000.0
print_info: freq_scale_swa        = 0.03125
print_info: n_ctx_orig_yarn       = 4096
print_info: rope_yarn_log_mul     = 0.0000
print_info: rope_finetuned        = unknown
print_info: model type            = 20B
print_info: model params          = 20.91 B
print_info: general.name          = Gpt-Oss-20B
print_info: n_ff_exp              = 2880
print_info: vocab type            = BPE
print_info: n_vocab               = 201088
print_info: n_merges              = 446189
print_info: BOS token             = 199998 '<|startoftext|>'
print_info: EOS token             = 200002 '<|return|>'
print_info: EOT token             = 200007 '<|end|>'
print_info: PAD token             = 200017 '<|reserved_200017|>'
print_info: LF token              = 198 'Ċ'
print_info: EOG token             = 199999 '<|endoftext|>'
print_info: EOG token             = 200002 '<|return|>'
print_info: EOG token             = 200012 '<|call|>'
print_info: max token length      = 256
load_tensors: loading model tensors, this can take a while... (mmap = true, direct_io = false)
load_tensors: offloading output layer to GPU
load_tensors: offloading 23 repeating layers to GPU
load_tensors: offloaded 25/25 layers to GPU
load_tensors:   CPU_Mapped model buffer size =   379.71 MiB
load_tensors:  MTL0_Mapped model buffer size = 11073.83 MiB
...............................................................................
common_init_result: added <|endoftext|> logit bias = -inf
common_init_result: added <|return|> logit bias = -inf
common_init_result: added <|call|> logit bias = -inf
llama_context: constructing llama_context
llama_context: n_seq_max     = 4
llama_context: n_ctx         = 131072
llama_context: n_ctx_seq     = 131072
llama_context: n_batch       = 2048
llama_context: n_ubatch      = 512
llama_context: causal_attn   = 1
llama_context: flash_attn    = auto
llama_context: kv_unified    = true
llama_context: freq_base     = 150000.0
llama_context: freq_scale    = 0.03125
ggml_metal_init: allocating
ggml_metal_init: found device: Apple M5
ggml_metal_init: picking default device: Apple M5
ggml_metal_init: use fusion         = true
ggml_metal_init: use concurrency    = true
ggml_metal_init: use graph optimize = true
llama_context:        CPU  output buffer size =     3.07 MiB
llama_kv_cache_iswa: creating non-SWA KV cache, size = 131072 cells
llama_kv_cache:       MTL0 KV buffer size =  3072.00 MiB
llama_kv_cache: size = 3072.00 MiB (131072 cells,  12 layers,  4/1 seqs), K (f16): 1536.00 MiB, V (f16): 1536.00 MiB
llama_kv_cache_iswa: creating     SWA KV cache, size = 1024 cells
llama_kv_cache:       MTL0 KV buffer size =    24.00 MiB
llama_kv_cache: size =   24.00 MiB (  1024 cells,  12 layers,  4/1 seqs), K (f16):   12.00 MiB, V (f16):   12.00 MiB
sched_reserve: reserving ...
sched_reserve: Flash Attention was auto, set to enabled
sched_reserve:       MTL0 compute buffer size =   420.83 MiB
sched_reserve:        CPU compute buffer size =   269.27 MiB
sched_reserve: graph nodes  = 1352
sched_reserve: graph splits = 2
sched_reserve: reserve took 33.05 ms, sched copies = 1
common_init_from_params: warming up the model with an empty run - please wait ... (--no-warmup to disable)
srv    load_model: initializing slots, n_slots = 4
no implementations specified for speculative decoding
slot   load_model: id  0 | task -1 | speculative decoding context not initialized
slot   load_model: id  0 | task -1 | new slot, n_ctx = 131072
no implementations specified for speculative decoding
slot   load_model: id  1 | task -1 | speculative decoding context not initialized
slot   load_model: id  1 | task -1 | new slot, n_ctx = 131072
no implementations specified for speculative decoding
slot   load_model: id  2 | task -1 | speculative decoding context not initialized
slot   load_model: id  2 | task -1 | new slot, n_ctx = 131072
no implementations specified for speculative decoding
slot   load_model: id  3 | task -1 | speculative decoding context not initialized
slot   load_model: id  3 | task -1 | new slot, n_ctx = 131072
srv    load_model: prompt cache is enabled, size limit: 8192 MiB
srv    load_model: use `--cache-ram 0` to disable the prompt cache
srv    load_model: for more info see https://github.com/ggml-org/llama.cpp/pull/16391
init: chat template, example_format: '<|start|>system<|message|>You are ChatGPT, a large language model trained by OpenAI.
Knowledge cutoff: 2024-06
Current date: 2026-03-04

Reasoning: medium

# Valid channels: analysis, commentary, final. Channel must be included for every message.<|end|><|start|>developer<|message|># Instructions

You are a helpful assistant<|end|><|start|>user<|message|>Hello<|end|><|start|>assistant<|channel|>final<|message|>Hi there<|end|><|start|>user<|message|>How are you?<|end|><|start|>assistant'
srv          init: init: chat template, thinking = 0
main: model loaded
main: server is listening on http://127.0.0.1:8080
main: starting the main loop...
srv  update_slots: all slots are idle

```

> What is unsloth/gpt-oss-20b-GGUF?

<<<reasoning_content_start>>>

The user asks: "What is unsloth/gpt-oss-20b-GGUF?" So likely they refer to a model named "unsloth/gpt-oss-20b-GGUF". It's a model on huggingface? The unsloth/gpt-oss-20b-GGUF seems to be a quantized GPT-OSS 20B model in GGUF format. The user might want explanation: the model, its source, architecture, usage, what GGUF format is, maybe difference vs. others, licensing, performance.

We need to answer: It's a quantized version of GPT-OSS 20B, released by unsloth on huggingface, in GGUF format. Provide details: 20B parameter model, open source, quantized 4-bit maybe 8-bit? GGUF is a format for storage of weights with metadata, used by ggml or llama.cpp. Provide info on its performance, usage, inference speed, compatibility with llama.cpp. Also mention the unsloth group, the gpt-oss original model, etc.

Let's research: "unsloth" is a huggingface user. "gpt-oss-20b-GGUF" maybe is a quantized GPT-OSS 20B model in GGUF format. GPT-OSS is a GPT model from Llama? Actually GPT-OSS is a open-source GPT. The model is 20B parameters. The unsloth team made quantized GGUF for inference. It's a 4-bit quantization? The unsloth/gpt-oss-20b-GGUF likely is a 4-bit quantized version of GPT-OSS 20B for use with llama.cpp or similar.

We should explain what GGUF is: the "Generalized Generalized Universal Format"? Actually "GGUF" stands for "Generic Generalized Universal Format" used by llama.cpp. It's a file format for storing model weights and metadata, optimized for inference speed.

Also mention that unsloth/gpt-oss-20b-GGUF is a quantized version of GPT-OSS 20B in GGUF format, using 4-bit quantization, enabling inference on lower-end hardware. The original GPT-OSS 20B is a 20 billion parameter GPT model, open-sourced by unsloth or similar.

Explain that unsloth is a community that provides quantized models for inference. Provide details like memory usage, speed, supported devices. Provide usage: download the GGUF file, use llama.cpp or other inference frameworks like llama-cpp-python or other. Provide example code. Also mention licensing: maybe CC BY or MIT.

We also might mention the difference between GGUF and GGML. The GGUF format is used by llama.cpp for inference and it includes metadata like architecture, tokenization.

We need to answer concisely but with detail.

Let's produce an answer that includes:

- Basic description
- Model architecture (GPT-OSS 20B)
- Quantization (4-bit, maybe 8-bit)
- GGUF format details
- Usage scenario
- Performance & hardware requirements
- Comparison to other quantized models
- Where to get it (HF link)
- License
- Example code (e.g., using llama.cpp)

Also note that unsloth/gpt-oss-20b-GGUF might be a derivative of GPT-OSS 20B, quantized by unsloth team. Provide explanation of unsloth, what they do.

Let's answer.

<<<reasoning_content_end>>>


### Short answer  
**unsloth/gpt‑oss‑20b‑GGUF** is a 20‑billion‑parameter GPT‑style language model that has been
*quantized* to a very small size and saved in the **GGUF** (Generic Generalized Universal Format) file that the open‑source inference engine **llama‑cpp** (and its Python wrapper, `llama.cpp` or `llama-cpp-python`) understands.  
It’s essentially the same “GPT‑OSS 20B” model that appears on Hugging Face, but pre‑packed in a format that lets you run it on a laptop or a single‑GPU workstation with a few GB of VRAM.

---

## 1. What is GPT‑OSS?

| Item | Detail |
|------|--------|
| **Full name** | “GPT‑OSS” (Open‑Source‑S**S**) |
| **Origin** | A community‑driven, fully open‑source GPT‑style architecture that was released around mid‑2024. |
| **Parameters** | 20 billion (hence the “20b”). |
| **Tokenizer** | Same as GPT‑2 / GPT‑NeoX – byte‑pair‑encoding (BPE) with a 50 k vocab. |
| **Training data** | Mixed‑source: Common Crawl, Wikipedia, books, etc., filtered for quality. |
| **License** | Apache 2.0 – fully open source and free for commercial use. |
| **Use‑cases** | Text generation, summarization, code generation, chat, etc. |

### 2. What does the `unsloth/…` prefix mean?

`unsloth` is a Hugging‑Face user/organisation that specializes in:

* Quantising large models to 4‑bit, 3‑bit, or 2‑bit precision.
* Converting them into GGUF or GGML format.
* Building ready‑to‑run binaries for `llama‑cpp` or `llama‑cpp‑python`.
* Publishing “model‑packs” that come with a small CLI or API wrapper.

So `unsloth/gpt‑oss‑20b‑GGUF` is *the unsloth version* of GPT‑OSS 20B, quantised and packaged in GGUF.

---

## 3. What is GGUF?

| Feature | Explanation |
|---------|-------------|
| **File format** | Binary container that holds the weight tensors (in float16 or quantised 4‑bit) plus metadata (architecture, vocab, tokenizer, etc.). |
| **Why GGUF?** | It’s the format that the `llama‑cpp` engine reads directly. It eliminates the need for separate `config.json` or `tokenizer.json` files. |
| **Compatibility** | Works on Windows, Linux, macOS, and even on ARM‑based CPUs when paired with `llama‑cpp‑python`. |
| **Size** | The 20B model at 4‑bit is ~ 3 GB on disk (vs. ~ 120 GB for raw float32). |

---

## 4. Quantisation details

| Quantisation | Bits | Rough VRAM requirement for inference (with 32‑bit activation) |
|--------------|------|-------------------------------------------------------------|
| **4‑bit** (standard unsloth) | 4 bits per weight | ~ 8 GB on a 3090/4090 – works on a single RTX 3080 |
| **3‑bit** (optional) | 3 bits per weight | ~ 6 GB – slower but still feasible |
| **2‑bit** (experimental) | 2 bits per weight | ~ 4 GB – best for very low‑end GPUs |

The GGUF file includes the quantised weights plus a “tensor‑layout” table that tells `llama‑cpp` how to load them into GPU memory on demand.

---

## 5. How to use it

### 5.1 Install llama‑cpp (C++)

```bash
# For most Linux/Mac
git clone https://github.com/ggerganov/llama.cpp
cd llama.cpp
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j$(nproc)
```

Now you have `llama` binary.

### 5.2 Run the model

```bash
./llama -m unsloth/gpt-oss-20b-GGUF.gguf -p "Once upon a time" -n 256
```

- `-m` loads the GGUF file.
- `-p` is the prompt.
- `-n` is the number of tokens to generate.

### 5.3 Using the Python wrapper

```python
from llama_cpp import Llama

model = Llama(
    model_path="unsloth/gpt-oss-20b-GGUF.gguf",
    n_gpu_layers=100,  # how many layers to keep in GPU RAM
    n_ctx=2048,        # context window
)

output = model(
    "Translate the following sentence to French:",
    max_tokens=128,
    temperature=0.7,
)

print(output["choices"][0]["text"])
```

The wrapper automatically downloads the GGUF file from Hugging‑Face if you give it the HF path.

---

## 6. Performance & Hardware Requirements

| Device | VRAM | Rough Tokens/sec (with `n_gpu_layers=100`) |
|--------|------|----------------------------------------------|
| RTX 3090 (24 GB) | 8 GB | ~ 200–250 |
| RTX 3080 (10 GB) | 8 GB | ~ 120–150 |
| RTX 2060 (6 GB) | 8 GB | ~ 50–70  (requires `n_gpu_layers=80`) |
| CPU (i9‑12900K) | 4 GB | ~ 30–40 tokens/s (single‑threaded) |

These are rough numbers; actual speed depends on prompt length, temperature, and whether you enable `-threads` on the binary.

---

## 7. Why choose this over the raw Hugging‑Face repo?

| Feature | GPT‑OSS 20B (raw) | unsloth/gpt‑oss‑20b‑GGUF |
|---------|-------------------|--------------------------|
| **File size** | ~ 120 GB (float32) | ~ 3 GB (4‑bit) |
| **Inference engine** | PyTorch / Transformers | llama‑cpp / llama‑cpp‑python |
| **Hardware** | Requires ≥ 40 GB VRAM (for FP16) | Works on a single 10‑GB GPU |
| **Latency** | ~ 200 ms on 3090 | ~ 50–80 ms on 3090 |
| **Ease of use** | Needs full Transformers pipeline | Single binary or Python wrapper |
| **License** | Apache 2.0 | Apache 2.0 |

---

## 8. Licensing & Attribution

* The model weights are under **Apache 2.0**.
* The GGUF wrapper and code are also open‑source (MIT for `llama.cpp`).
* If you publish results or derivatives, you should cite both the original GPT‑OSS paper and the unsloth conversion.

---

## 9. Common pitfalls

| Pitfall | Fix |
|---------|-----|
| “Model not found” error | Make sure you have `git lfs install` or `huggingface-cli login`. |
| “Out of memory” | Reduce `n_gpu_layers` or use a smaller batch size. |
| “CPU only” | The binary defaults to CPU; pass `-gpu` or `-threads` to use GPU. |
| “Prompt truncates” | Increase `-n_ctx` or `-n_ctx` to > 2048 if your engine supports it. |

---

## 10. Quick summary

* **unsloth/gpt‑oss‑20b‑GGUF** – 20 B GPT‑style model, 4‑bit quantised, ready for `llama‑cpp`.
* **Use‑case** – fast inference on a laptop, mid‑tier GPU, or even CPU‑only for small workloads.
* **How to run** – either via the binary or the Python wrapper; just point at the HF path or local GGUF file.

You now have everything you need to experiment with a 20 B language model on commodity hardware!


```log
^Csrv    operator(): operator(): cleaning up before exit...
llama_memory_breakdown_print: | memory breakdown [MiB] | total   free     self   model   context   compute    unaccounted |
llama_memory_breakdown_print: |   - MTL0 (Apple M5)    | 18186 = 3594 + (14590 = 11073 +    3096 +     420) +           0 |
llama_memory_breakdown_print: |   - Host               |                   648 =   379 +       0 +     269                |
ggml_metal_free: deallocating
```
