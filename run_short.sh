python run_summarization.py \
--mode=train \
--data_path=./data/val_data_pt.bin \
--vocab_path=./data/val_vocab.vocab \
--log_root=logroot \
--exp_name=test-experiment5 \
--hidden_dim=24 \
--emb_dim=10 \
--max_dec_steps=210 \
--max_enc_steps=250 \
--num_sections=3 \
--max_section_len=1000 \
--batch_size=4 \
--vocab_size=5000 \
--use_do=True \
--optimizer=adagrad \
--do_prob=0.25 \
--hier=True \
--split_intro=True \
--fixed_attn=True \
--legacy_encoder=False \
--coverage=False
