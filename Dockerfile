# Specify a Base Image for subsequent instructions. Valid Dockerfile must start with FROM instructions.
FROM python:3.7.6
# The WORKDIR sets the working directory for any RUN, CMD, ENTRYPOINT, COPY, ADD instructions that follow.
WORKDIR /fastapi-app
# The COPY instruction takes a source file or directory and 
# copies it to the filesystem of the container at the destination path
COPY requirements.txt .
# The RUN instruction executes any commnad in a new layer on top of the current image and commits the results.
RUN pip install -r requirements.txt
# Again we are copying a source file from the defined location to a defined location within the Docker container.
COPY ./app ./app
# The CMD instruction (can only be one) This insturction has a 'command/argument' and an 'entry point'.
# Meaning the CMD here provides default argument for the entry point. This scenario must use
# JSON array format. AS shown here [argument, entrypoint]
CMD ["python", "./app/main.py"]