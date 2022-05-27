files=(checkpoint .data-00000-of-00001 .index .snakemake_timestamp)

models=(0_baseline_LSTM 1_metab_multitask 1a_multitask_do_gpp_er)

for f in ${files[@]}; do
    for d in ${models[@]}; do
        echo $d
        git add $d/nstates_*/nep_*/rep_*/train_weights/$f -f
    done
done
