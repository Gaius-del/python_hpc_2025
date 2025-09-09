# Use current folder
NOTEBOOK_FOLDER=$(pwd -P)
export PATH="/cm/shared/apps/sdsc/galyleo:${PATH}"
# specify your own allocation here
ACCOUNT=sds166

galyleo launch \
  --account ${ACCOUNT} \
  --partition compute \
  --cpus 128 \
  --memory 242 \
  --time-limit 04:00:00 \
  --conda-yml environment.yaml \
  --notebook-dir ${NOTEBOOK_FOLDER} \
  --cache \
  --quiet
