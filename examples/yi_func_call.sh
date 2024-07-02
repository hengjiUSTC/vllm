python3 -m vllm.entrypoints.openai.api_server \
	--model /ML-A100/team/align/home/chenjianqun/wanzhi_models/no-sys_hf \
	--enable-api-tools --privileged \
	--served-model-name no-sys \
	--tokenizer /ML-A100/team/align/home/chenjianqun/tokenizers/132b_tokenizer_bos_16k_fc \
	--tensor-parallel-size 4 --host 0.0.0.0 --port 8001 \
	--tokenizer-mode=slow --disable-log-requests
