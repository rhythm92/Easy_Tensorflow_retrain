DATASET_DIR=/home/diego/data/flowers/
TRAIN_DIR=/home/diego/data/train_logs/
CHECKPOINT_PATH=/home/diego/data/checkpoints/inception_resnet_v2_2016_08_30.ckpt
python train_image_classifier.py \
--train_dir=${TRAIN_DIR} \
--dataset_dir=${DATASET_DIR} \
--dataset_name=flowers \
--dataset_split_name=train \
--model_name=inception_resnet_v2 \
--checkpoint_path=${CHECKPOINT_PATH} \
--checkpoint_exclude_scopes=InceptionResnetV2/Logits,InceptionResnetV2/AuxLogits \
--batch_size=8
