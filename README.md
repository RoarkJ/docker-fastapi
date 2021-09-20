# docker-fastapi-venv-git-vscode
macOS
This is an introduction repository primarily focused on demonstrating the development of an api using a combination of tools.  The tools used here are VSCode, Python, Docker, Python Virtual Environment, FastAPI framework, Uvicorn ASGI(Asynchronous Server Gateway Interface (async will not be implemented)) and of course Git with GitHub.
I have added notes in the Dockerfile that may be helpful in understanding what we are doing with Docker.

You will need to have Docker installed and running on your desktop computer.

Before getting started on project go to your github account and create a new repository.  When creating the repository add a Python .gitignore document template and add a README to your repository.  Copy the link needed to clone your repository locally.  

### If you want to use VSCode:  
open vs code.  
Install the official Microsoft Docker Extension.  This provides nice features for auto-debugging and auto-completion.
There is also a GitHub Extension for VSCode. It is not necissary for this project.  
For Steps where you copy past my code into your file use VSCode explorer to navigate to the file and paste into the file from within the editor window after you select the file in the VSCode explorer.  Remember to save changes before going back to the terminal to complete further steps.  
Note: Remember to push your changes periodically to GitHub.
Complete terminal steps below from within VSCode.  The way you open a terminal in VSCode  is by selecting the  
keys: Ctrl + `(backtick) then begin following from step 1.).

## Steps:
### Create and Setup Virtual Enviornment  
1.) Open a terminal on your local machine and git clone the repository you just created on GitHub to the location you want to save your repository on your local machine.  
2.) Move into the directory of your cloned repository. 
$cd "directory_name"  
3.) Create virtual environment.  
$python3 -m venv venv  
4.) Activate virtual environment. (To deactivate virtual environment use $deactivate)  
$source venv/bin/activate
### Begin Project Work
5.) Install dependencies.(You may want to update pip first: $python -m pip install -U pip)  
$pip install fastapi (This is the Web framework)  
$pip install uvicorn (This is the Web Services Gateway)  
6.) Create a new directory named app  
$mkdir app  
7.) Change to new directory.  
$cd app  
8.) Create a new file calle main.py  
$touch main.py  
copy the contents of my main.py to your copy of main.py  
9.) Add your dependencies to requirements.txt  
(Backup one directory $cd ../ so you are no longer in the app directory)  
$pip freeze > requirements.txt (The file will be created automatically.)  
10.) Create a Dockerfile in the root directory of the project (You should already be in this dierctory)  
$touch Dockerfile  
11.) Copy paste the contents of my Dockerfile into your Dockerfile.
12.) We can now build our Docker image.  
$docker build -t python-fastapi .  
13.) Now we can run our application from within a Docker container.
$docker run -p 8000:8000 python-fastapi  
Some notes about step 12 and 13 code: When running the docker container in step 13 we are creating an live instance of the Docker image we create in step 12.  A good way to think of the difference between a Docker image and a Docker container is, to think of a Docker image like a jpeg image and the Docker container as a printed version of the Docker image.If you are familiar with virtual machine images then you likely understand what is going on here already. But, If you do not then, this analogy is a good stepping of point for contexting what you are doing in these last two steps.  

Additionally, I would like to explain the "-p 8000:8000" portion of step 13. Whe you run a Docker container it does not publish any of it's ports to the outside world.  To make a port available to services outside of the Docker container that are not connected to the container's network (for exaple: a web browser) You must publish (-p) and map (8000:8000) a container's port to a port on the Docker host (In this case, your local machine where you are running Docker is the host.) 



