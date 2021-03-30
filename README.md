# Mental health on Twitter

In this GitHub repository you can find all data and the script needed to obtain the same data as I have obtained for my research on the usage of mental health keywords on Twitter. In my study, I researched the following question: Are users on Twitter talking more about mental health in 2019 than in 2015? The results of my study can be found at the subtitle 'Results'.

## Data
Besides the shell script, you can find multiple folders in this repository including the data that I have used for my research. These folders are called: *.

## Access files
You can access the files from this repository in two ways; downloading direct from GitHub or cloning the repository.

### Download
You can download the repository as follows:
1. Click the green `Code` button.
2. Select `Download ZIP`

A zip-file with all contents of this repository will be downloaded to your computer.

### Clone repository (Linux)
You can clone the repository as follows:
1. Go to the directory on your computer where you want to clone the repository to.
2. Type git clone and paste the URL of this repository:
   
   ```ruby
   git clone https://github.com/robinelting/iwo-fp
   ```
3. Press `Enter` to create your local clone.

## Collect the data
After you have downloaded the necessary files, you can run the script called `mh_twitter.sh` as follows:
1. Place `mh_twitter.sh` in the folder `20150101`. This folder contains all tweets from 01-01-2015.
2. Run the following command:

   ```ruby
   ./mh_twitter.sh 2015010101.txt
   ```
   This command will run the script `m5_twitter.sh` on the file `2015010101.txt`, so for 01-01-2015      the first hour. The command will then print out the amount of Tweets with mental health keywords      and the amount of Tweets without mental health keywords. Write those down.
3. Repeat the command above for each file. If you want to move on to the next folder, you need to        move the script `mh_twitter.sh`:
  
  ```ruby
   mv mh_twitter.sh ..
   mv mh_twitter.sh FOLDERNAME
   ```
4. After you have run the script on all files and written down the amount of tweets with and without    mental keywords, you can sum up all tweets with and without mental health keywords for each year.    This will give you the results of the amount of tweets with mental health keywords and the amount    of tweets without mental health keywords.

## Results
The results I obtained after collecting all of the data ar as follows:
2015:
Tweets with mental health keywords: 58
Tweets without mental health keywords: 3.053.956

2019:
Tweets with mental health keywords: 167
Tweets without mental health keywords: 1.854.194

