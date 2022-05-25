
There are two branches in this repository, one named "main" and another named "master".
In the "master" branch, result.hdf5 is the best-performance weight corresponding to branchc51.json.


You can run "trainmultinetwork.py" to start training. Before training, "train.xlsx" is needed, which 
provids the labels of images used to train, "exponehot.npy" and "idonehot.npy" are 
one-hot encoding for identity and expression in training set, respectively.

You can run "validateid.py" to start validation of identity, and run "validateexp.py" to start validation 
of expression. Here, the identity classification accuracy was evaluated using the same strategy as FaceNet 

"analysis.m" include the code for RSA based on Spearman rank correlation and the code for generating identity matrix 
and expression matrix, which containing only values of 1 and 0, where 0 denotes the same category of image pairs and 
1 denotes  a different category of image pairs. 