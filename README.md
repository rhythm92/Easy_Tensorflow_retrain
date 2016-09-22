# Easy_Tensorflow_retrain
Scripts for retraining using state-of-the-art Inception-ResNet-V2 on your own dataset. 

Download Tensorflow nightly builds from: http://ci.tensorflow.org/view/Nightly/job/nightly-matrix-linux-gpu/TF_BUILD_IS_OPT=OPT,TF_BUILD_IS_PIP=PIP,TF_BUILD_PYTHON_VERSION=PYTHON2,label=gpu-linux/
<br><br>
Install nightly with: sudo -H pip2 install tensorflow-0.10.0-cp27-none-linux_x86_64.whl	
<br><br>
Download the models repository from: https://github.com/tensorflow/models
<br><br>
Place all files (convert_dataset.py, convert_dataset.sh and train_inception_resnet_v2.sh) inside the models/slim folder. 
<br><br>
Change convert_dataset.sh to the number of validation images and directory where each class is a folder (ie. daisy, dandelion, roses, sunflowers, tulips)
<br><br>
Run convert_dataset.sh
<br>
It will create a folder, tensorflow_data, with the training data. 
<br><br>
Download the Inception-ResNet-v2 pre-trained model from: http://download.tensorflow.org/models/inception_resnet_v2_2016_08_30.tar.gz
<br><br>
Change train_inception_resnet_v2.sh's DATASET_DIR, TRAIN_DIR, CHECKPOINT_PATH and batch_size. 
<br><br>
Change models/slim/datasets/flowers.py's SPLITS_TO_SIZES and _NUM_CLASSES, or copy and create a new .py for your own dataset and change dataset_name in train_inception_resnet_v2.sh to the name of your dataset .py inside models/slim/datasets/. 
<br><br>
run train_inception_resnet_v2.sh
<br>
Checkpoints will be created in TRAIN_DIR. 
