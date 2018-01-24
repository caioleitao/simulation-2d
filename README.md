
# Welcome to RoboCIn Simulation 2D

This repository will guide you to install Simulation 2D environment


[![RSS 2D](http://img.youtube.com/vi/Ptzv9NF9opM/0.jpg)](https://www.youtube.com/watch?v=Ptzv9NF9opM "Robot Soccer Simulator 2D")

## Install Dependencies

 0. You need to install project [libs](https://github.com/robocin/simulation-2d/tree/master/libs). Go to folder and copy
 libs to your local libs path, and link it.
 	
 		cd libs/
		sudo cp librcss* /usr/local/lib/

	Now you need to link it:

		(Open with a text editor in sudo mode)
		sudo subl /etc/ld.so.conf.d/local.conf # here we used sublime, but you can use gedit or vi

	Write these path:
	
		/usr/local/share

	And update your ldconfig:

		sudo ldconfig

	If after each part installation, you have a lib error, try to run the command above again.


 1. **Install** [Flex](https://github.com/westes/flex) **and** [Bison](https://www.gnu.org/software/bison/ ):
		
		sudo apt-get update
		sudo apt-get upgrade
		sudo apt-get install flex bison
		
	After install, check if everything is ok:

	    which flex
	    which bison

 2. **Install libs to help in building process**:
 
	    sudo apt-get install libaudio-dev libpng-dev libxi-dev libglib2.0-dev libfontconfig-dev libxrender-dev

 3. **Go to this** [repository](https://github.com/rcsoccersim/) **and clone each part of the environment inside your simulator folder**:
		
	    sudo mkdir sim2d
	    cd sim2d
	    git clone https://github.com/rcsoccersim/rcssserver
	    git clone https://github.com/rcsoccersim/rcsslogplayer
	    git clone https://github.com/rcsoccersim/rcssmonitor

 4. **Install each part of environment**:
 
	4.1 Install [rcssserver](https://github.com/rcsoccersim/rcssserver):
		
		cd rcssserver
		sudo ./bootstrap
	    sudo ./configure
	    sudo make
	    sudo make install
	    cd ..

	4.2 Install [rcsslogplayer](https://github.com/rcsoccersim/rcsslogplayer)

		cd rcsslogplayer
		sudo ./bootstrap
	    sudo ./configure
	    sudo make
	    sudo make install
	    cd ..
	
	4.3 Install [rcssmonitor](https://github.com/rcsoccersim/rcssmonitor)
	
		cd rcssmonitor
		sudo ./bootstrap
	    sudo ./configure
	    sudo make
	    sudo make install


	If there is any error, try to read [Compilation Error](https://github.com/robocin/simulation-2d#compilation-error), or if doesn´t have, you can open an issue.

	Tree process:
	
	![alt text](https://github.com/robocin/simulation-2d/blob/master/images/flowchartProcess.png)


 5. **After installation you can run each project part in different terminal**:
 
		ctrl + alt + T
	    rcssserver	# if it doesn´t work, try to run as sudo
    
	![alt text](https://github.com/robocin/simulation-2d/blob/master/images/rcssserver.png)


	    ctrl + shift + T
	    rcssmonitor # if it doesn´t work, try to run as sudo

	![alt text](https://github.com/robocin/simulation-2d/blob/master/images/rcssmonitor.png)

	    
	    ctrl + shift + T
	    rcsslogplayer # if it doesn´t work, try to run as sudo
	
	![alt text](https://github.com/robocin/simulation-2d/blob/master/images/rcsslogplayer.png)


	    ctrl + shift + T
	    Run your team code (In Item 6: there are two teams projects to download)

	![alt text](https://github.com/robocin/simulation-2d/blob/master/images/rcssteam.png)


 6. **You can download some open source team and try to modify it**:

	[Python Team](https://github.com/kengz/robocup-soccer)

	[C++ Team](https://github.com/wrighteagle2d/wrighteaglebase)

I couldn`t put the python team to work, but the c++  worked very well, you can download, install and run it:

	git clone https://github.com/wrighteagle2d/wrighteaglebase
	cd wrighteaglebase
	sudo make
	./start.sh # These command will start a team in left side
	ctrl + shift + T
	./start.sh -t [TEAMNAME] # These command will start a team in right side
	ctrl + K # These command will start the game, have fun! :)


## Compilation Error

If you have any compilation error, open an issue and we will try to help you fixing it.

If you are facing these error:

Try to run the command as **sudo**, or install [autoconfig](https://askubuntu.com/questions/430706/installing-autotools-autoconf/638558) and dh-autoconfig


## Tutorial Authors

* **Heitor Rapela** -- [heitorrapela](https://github.com/heitorrapela)
* **Juliana Damurie** -- [JulianaDamurie](https://github.com/JulianaDamurie)

## Acknowledgments

These tutorial were created based on https://github.com/rcsoccersim
