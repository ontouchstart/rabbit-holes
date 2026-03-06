ROOT = ggml-org/llama.cpp

trace:
	find $(ROOT) -type f -name "*.cpp" -exec grep -l "main" {} \; | grep cli > /tmp/llama-cli-trace-step-1.log
	grep -n -A 5 "int main" $(ROOT)/tools/cli/cli.cpp > /tmp/llama-cli-trace-step-2.log
	grep -n "^#include" $(ROOT)/tools/cli/cli.cpp > /tmp/llama-cli-trace-step-3.log
	otool -L $(ROOT)/build/bin/llama-cli > /tmp/llama-cli-trace-step-4.log
	cat $(ROOT)/tools/cli/CMakeLists.txt | grep -A 5 "target_link_libraries" > /tmp/llama-cli-trace-step-5.log
	find $(ROOT)/build -name "*context*.a" -o -name "*common*.a" > /tmp/llama-cli-trace-step-6.log
	ls -l $(ROOT)/build/tools/server/ > /tmp/llama-cli-trace-step-7.log
	find $(ROOT)/build/tools/server -name "*.h*" > /tmp/llama-cli-trace-step-8.log
	find $(ROOT)/build -path "*/server/*" -name "*.h*" > /tmp/llama-cli-trace-step-9.log
	find $(ROOT)/tools/server -type f -name "*.cpp" -o -name "*.h*" | sort > /tmp/llama-cli-trace-step-10.log
	grep -n server-context $(ROOT)/tools/cli/cli.cpp > /tmp/llama-cli-trace-step-11.log
	grep -n server_context $(ROOT)/tools/cli/cli.cpp > /tmp/llama-cli-trace-step-12.log
	grep -n -A 5 "server_context ctx_server" $(ROOT)/tools/cli/cli.cpp > /tmp/llama-cli-trace-step-13.log
	grep -n -A 10 -B 5 "ctx_server" $(ROOT)/tools/cli/cli.cpp > /tmp/llama-cli-trace-step-14.log
	cat -n $(ROOT)/tools/server/server-context.h > /tmp/llama-cli-trace-step-15.log
	grep -n "load_model" $(ROOT)/tools/server/server-context.cpp > /tmp/llama-cli-trace-step-16.log
	grep -A 20 "bool server_context::load_model" $(ROOT)/tools/server/server-context.cpp > /tmp/llama-cli-trace-step-17.log
	grep -n -A 15 "impl->load_model" $(ROOT)/tools/server/server-context.cpp > /tmp/llama-cli-trace-step-18.log
	grep -n -B 5 "load_model.*const.*params" $(ROOT)/tools/server/server-context.cpp > /tmp/llama-cli-trace-step-19.log
	grep -n "impl.*load_model.*" $(ROOT)/tools/server/server-context.cpp > /tmp/llama-cli-trace-step-20.log
	grep -n -B 10 -A 40 "impl->load_model.*params" $(ROOT)/tools/server/server-context.cpp  > /tmp/llama-cli-trace-step-21.log
	cat $(ROOT)/tools/server/server-context.cpp | grep -n "load_model" | grep -A 2 -B 2 "{" > /tmp/llama-cli-trace-step-22.log
	sed -n '612,830p' $(ROOT)/tools/server/server-context.cpp > /tmp/llama-cli-trace-step-23.log
