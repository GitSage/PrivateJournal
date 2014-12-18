PrivateJournal
==============

Project for BYU CS360. A private server/front end system for keeping a journal. Author: Benjamin Yocum

NOTE: THIS GITHUB REPOSITORY IS CURRENTLY OUT OF DATE! I've made some major changes and I'm having trouble pushing from my local machine to GitHub, probably just because I have no experience with git.

This project is currently in pre-alpha. Some features are unimplemented, and data is not secure.

TO INSTALL:
Download the source code from this location:
misc.warsage.com/class/360/PrivateJournal.zip

Install the following Python packages using pip:
flask
sqlite3
contextlib

Initialize the database in this manner:
-Enter a Python interactive shell
-Enter these commandS: 
  from flaskr import init_db
  init_db
  
Run the server using python flaskr.py

You're done! The server should be running now.
