# Visual Attention Prediction using Saliency Maps
Predicting visual attention of humans in emotion eliciting images using saliency maps produced by a deep learning model.

The directory contains 3 Python notebooks and 1 Folder containing the MATLAB Visualization Files. Follow the steps written under each file:
**CASNet.ipynb**
1. Contains the training and testing code for the NN with CASNet as its subnetwork 
2. sgd = SGD(lr=10e-5, decay=0.0005, momentum=0.9) Inside create_model(): Change the learning rate, decay rate and momentum accordingly
3. Change configurations as required which are given under the configurations heading
4. images = sorted(glob.glob('/content/drive/My Drive/NNFL Project/Dataset/Unzipped/EMOdImages1019/*.jpg')) Change path for test images(test variable)
5. maps = sorted(glob.glob('/content/drive/My Drive/NNFL Project/Dataset/Unzipped/Fixation_Maps/FixationMap/Continous_map/*.jpg')) Change path for fixation maps(target variable)
6. Save weights using model.save_weights() after training
7. model.load_weights("path_to_stored_weights") for testing 
8. images = sorted(glob.glob('path_to_stored_images')) for testing
9. m.save("/content/drive/My Drive/NNFL Project/Dataset/Unzipped/PredSalMaps/"+name) Save the predicted saliency maps in the folder

**N-CASNet.ipynb**
1. Contains the testing code for the NN with NCASNet as its subnetwork
2.model.load_weights("/content/drive/My Drive/NNFLProject/Dataset/salicon_generator_sigmoid_epoch_25.h5", by_name = True) 
➔ Change path to the path of the stored weights
3.images = sorted(glob.glob('/content/drive/My Drive/NNFL Project/Dataset/Unzipped/EMOdImages1019/*.jpg'))
➔ Change path to the path of the image dataset
4.m.save("/content/drive/My Drive/NNFL Project/Dataset/Unzipped/PredSalMaps_Ncasnet/"+name)
➔ Change path to the folder where you would like to store the predicted maps 

**metrics.ipynb**
1. Contains the code for the evaluation of the networks on various benchmark metrics
2. Inside calc_metrics()
➔ pred_sal_folder = "/content/drive/My Drive/NNFLProject/Dataset/Unzipped/PredSalMaps2" Change path to predicted maps folder
➔ gt_sal_folder = "/content/drive/My Drive/NNFL Project/Dataset/Unzipped/Fixation_Maps/FixationMap/Continous_map" Change path to continuous maps folder
➔ binary_folder = "/content/drive/My Drive/NNFL Project/Dataset/Unzipped/Fixation_Maps/FixationMap/Binary_map" Change path to binary maps folder

**Visualization_metrics**
➔ Contains the MATLAB functions to implement the visualization functions
➔ Run the file All_functions_called.m on MATLAB
1.myFolder ='path_to_the_folder_with_images';
2.imp = double(imread([myFolder,'\image.jpg']));
3.imb = double(imread([myFolder,'\image.jpg']));
4.imc = double(imread([myFolder,'\image.jpg']));
➔ Change the image.jpg with the .jpg on which you would like to run the metrics
