# Newborns' weight data analysis

This project presents a comprehensive analysis of newborns' birth weights recorded on December 18, 1997, at Mater Mothers’ Hospital in Brisbane, Australia. The study focuses on the statistical examination of birth weights based on gender and time of birth.

The goal of this project was to get familiar with these practices:
- Descriptive Statistics,
- Goodness-of-Fit Tests: Evaluation of various statistical distributions to fit the birth data.
- Hypothesis Testing: Tests conducted to analyze the dependence of birth weight on gender and time of birth (chi-squared Goodness-of-fit, t-test, Lilleforse's test)
on real data.

![Project Screenshot](images/hist_kluc_holky_vaha.svg)

## Table of Contents

- [Scripts](#scripts)
- [Images](#images)
- [Data](#data)

## Scripts

It contains MATLAB scripts for performing statistical tests and generating images that are discussed and displayed in the final report ```english-version.pdf```. 

## Images

All the generated images are saved in the directory ```images```. It is usually not a good practice to upload images to github.

## Data

The original data is saved in ```deti.dat```. The description of the data is the following:

- NAME: Time of Birth, Sex, and Birth Weight of 44 Babies
- TYPE: Observational
- SIZE: 44 observations, 4 variables

### DESCRIPTIVE ABSTRACT:

The dataset contains the time of birth, sex, and birth weight for each
of 44 babies born in one 24-hour period at a Brisbane, Australia,
hospital.  Also included is the number of minutes since midnight for
each birth.

### SOURCE: 
The data appeared in the Brisbane newspaper _The Sunday Mail_ on
December 21, 1997.

### VARIABLE DESCRIPTIONS: 
- Columns
- 1 -  8  Time of birth recorded on the 24-hour clock
- 9 - 16  Sex of the child (1 = girl, 2 = boy)
- 17 - 24  Birth weight in grams
- 25 - 32  Number of minutes after midnight of each birth

Values are aligned and delimited by blanks.  There are no missing
values.

### STORY BEHIND THE DATA:
Forty-four babies -- a new record -- were born in one 24-hour period at
the Mater Mothers' Hospital in Brisbane, Queensland, Australia, on
December 18, 1997.  For each of the 44 babies, _The Sunday Mail_
recorded the time of birth, the sex of the child, and the birth weight
in grams.
