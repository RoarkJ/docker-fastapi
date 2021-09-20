# docker-fastapi-venv-git-vscode
macOS
This is an introduction repository primarily focused on demonstrating the development of an api using a combination of tools.  The tools used here are VSCode, Python, Docker, Python Virtual Environment, FastAPI framework, Uvicorn ASGI(Asynchronous Server Gateway Interface (async will not be implemented)) and of course Git with GitHub.
I have added notes in the Dockerfile that may be helpful in understanding what we are doing with Docker.
## Steps:
1.)Create and Setup Virtual Enviornment

a.)From the command-prompt/terminal create a containing directory where you want to keep this projectand change to the directory you just created.

$mkdir "directory_name"

$cd "directory_name"

b.)Create virtual environment.

$python3 -m venv venv

c.) Activate virtual environment. (To deactivate virtual environment use $deactivate)

$ source venv/bin/activate

d.) Install dependencies.(You may want to update pip first: $python -m pip install -U pip)

$pip install fastapi (This is the Web framework)

$pip install uvicorn (This is the Web Services Gateway)


