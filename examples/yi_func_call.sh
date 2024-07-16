python3 -m vllm.entrypoints.openai.api_server \
	--model /ML-A100/public/run/chenjianqun/0705_fc_v1_gorillaWNoTurn_glaive_search_code_v10088 \
	--enable-api-tools \
	--privileged \
	--served-model-name v10088 \
	--tokenizer /ML-A100/team/align/home/chenjianqun/tokenizers/132b_tokenizer_bos_16k_fc_nocallid \
	--tensor-parallel-size 4 --host 0.0.0.0 --port 8001 \
	--tokenizer-mode=slow --disable-log-requests
