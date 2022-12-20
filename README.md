# SPM_UL_DyskineticCP
This repository contains code and data associated with the paper:

Vanmechelen I., Desloovere K., Haberfehlner H., Martens B., Vermeulen J., Buizer A., Aerts J-M., Feys H., Monbaliu E. (in review)
"Altered upper limb kinematics in individuals with dyskinetic cerebral palsy in comparison with typically developing peers – a statistical parametric mapping study"

Wherein we compare the upper limb movement patterns of individuals with dyskinetic cerebral palsy with typically developing peers.
The matrix "Angles_TD" and "Angles_DCP" contain the joint angles of all upper limbs discussed in the article.

# Part 1 
Part 1 of the data analysis uses SPM1d.
To execute to the matlab SPM scripts, please download the necessary functions at:
https://github.com/0todd0000/spm1d 

The script "POINTWISE_STANDARDDEVIATION" calculates the point-wise standard deviation for all TD and DCP individuals.
The script "SPM_POINTWISE_STANDARDDEVIATION_JOINTLEVEL" calculates whether there is a significant difference between the upper limb kinematics of both groups
at the level of each joint (wrist, elbow, shoulder, scapula, trunk) using hottelings ttest.

The scripts "PSD_POSTHOC_RF/RGV/RS" run the post-hoc ttets for all joint angles to identify for which clusters the PSD of the DCP group is significantly higher
compared to the TD group.

# Part 2
Part 2 of the analysis uses non-linear registration SPM.
To execute to the python script, please find all information on anaconda and python installation at:
https://github.com/0todd0000/nlreg1d

"short_Script.py" is the python script used for analysis of the non-linearly registred data.
The data to analyze is loaded in line 24:

dataset = nl.data.SimulatedA()

When running this script, the CSV to analyze should be named 'SimulatedA' as the script is preprogrammed to recognize this name for the dataset.
CSV files to be used in the sript are saved in the folders 'RS', 'RGV' and 'RS' for reach forwards, reach and grasp vertical and reach sideways tasks.

Data in these CSV files is the mean joint angle for each individual with 0 the data for the TD group and 1 the data for the DCP group

