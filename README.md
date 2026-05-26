server-stats-project
A lightweight Bash script to analyze basic server performance stats from the terminal.


What it does
Running server-stats.sh prints a snapshot of your server's current state:

CPU usage — total percentage in use
Memory usage — used vs free, with percentages
Disk usage — used vs free, with percentages
Top 5 processes by CPU — highest CPU consumers at that moment
Top 5 processes by memory — highest RAM consumers

Usage

1. Clone the repo:

git clone git@github.com:MatiasCardoso-000/server-stats-project.git
cd server-stats-project


2. Give the script execute permissions:

chmod +x server-stats.sh

3. Run it:

./server-stats.sh


## Project

This script was built as part of the [Server Stats](https://roadmap.sh/projects/server-stats) project from roadmap.sh.
