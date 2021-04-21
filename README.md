# Pseudo-Label-Selection
This repository presents the code for the "Conditional Independence for Pretext Task Selection in Self-Supervised Speech Representation Learning" paper by Salah Zaiem, Titouan Parcollet and Slim Essid. The repo contains the 3 phase of the done computations. First, the computation of the CI estimate for TIMIT and VoxCeleb, followed by the pretraining on Common Voice and the two downstream trainings. 

### CI estimation example 
An example is provided for TIMIT in the "CI_estimator/alphaRatio_sma3.sh" script. This computation takes two steps. First, if not done yet, we compute the K matrices, which are the same for all the considered pseudo-labels. Second, we compute the HSIC value for the considered pseudo-label. You can test it on the other pseudo-labels by changing the name in the script.<<  


An example for VoxCeleb CI estimation is also provided. 

### Pretraining
An example for pretraining is also proposed. Steps to get a pretraining experiment : 

Download the Common Voice english dataset here : https://commonvoice.mozilla.org/en/datasets

used the prepare.sh script providing the path to the unzipped dataset. 

example.sh offers the example of pretraining using alpharatio as the target pseudo-label.

### Retraining 

##### TIMIT 


For TIMIT, we perform end-to-end retraining and testing in one step. You'll have to copy the folder resulting from the pretraining in the TIMIT retraining folder first.

Then example.sh provides an example for retraining. At the end of the retraining, the test PER is output. 


##### VoxCeleb

Speaker Recognition is a two-step action in our work. First, we train Xvectors, as stated in the training_xvectors_example.sh. Afterwards, a few changes have to be made to the retraining yamls, mainly links to the embedding model. An example is provided with AlphaRatio. An example for verification and final results computing is provided in verification.sh  
