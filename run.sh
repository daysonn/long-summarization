python run_summarization.py \
--mode=train \
--data_path=./data/output.bin \
--vocab_path=./data/output.vocab \
--log_root=logroot \
--exp_name=test-demo-v6 \
--max_dec_steps=1 \
--max_enc_steps=2 \
--hidden_dim=24 \
--emb_dim=10 \
--num_sections=1 \
--max_section_len=10 \
--batch_size=4 \
--vocab_size=50 \
--use_do=True \
--optimizer=adagrad \
--do_prob=0.25 \
--hier=True \
--split_intro=False \
--fixed_attn=True \
--legacy_encoder=False \
--coverage=False