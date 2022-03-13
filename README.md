## Requirement
Pytorch >= 0.4

NLTK

## Retrieve Module

You can learn details of our retrieve module to select prototypes and construct training data and testing data for the Edit module. The final data is formatted as:
```
Src: prototype summary \t insertion tokens \t deletion tokens
Target: target summary
```
In this paper, we finally obtain 19,714,828 instances for training, 104,273 instances for validation, and 90,908 instances for testing.

## Edit Module
Training script:
```
bash train.sh
```
Testing script:
```
bash test.sh
```
You can learn details of hyper-parameters in the xargs.py


