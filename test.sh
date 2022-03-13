WORKDIR=""
export PYTHONPATH=$WORKDIR

python edit/console_translate.py \
-model saved_models/model.pt \
-gpu 3 \
-src data/test.src