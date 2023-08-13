# Overview page for Fashion MNIST ML API:

This repo represents the source code for deploying a Flask API end point for a Support Vector Machine (SVM) that will predict which digit is displayed with a 28 x 28 pixel image from the famouse MNIST data set. 

There are three ways for users to interact with this API:

## 1 Azure Web App:
The API is currently hosted on Azure and can be accessed publically by visiting: https://mnist-mlapi.azurewebsites.net/

Once the user has arrived at this webpage, they can select the `MNIST API` card which will direct them to the API landing page. 

The user is then able to upload an MNIST image and a digit prediction will be retrieved. Additionally, the JSON prediction will be returned showing the user what the RESTful payload will look like.

## 2 Docker:
In addition to locating the API via public internet access, the user can also run the Flask App locally via a Docker Container. In order to do this, the following steps must be taken:

1. First, the `SFL_MLAPI` repository must be cloned from GitHub at: https://github.com/Mike-Soukup/SFL_MLAPI
2. Ensure the user's Docker daemon is running
3. Build the Docker image by running the command `docker build -t <image_name> .`
    For example, enter `docker build -t mnist_api .` in the working directory of the SFL_MLAPI repository
4. Run the Docker image by running the command `docker run -d -p 8000:8000 <image_name>`
    For example, `docker run -d -p 8000:8000 mnist_api`
5. Once the Docker container is running, the user can open a webpage to `localhost:8000` and interact with the MNIST API.

## 3 Locally:
Developers or other users can also run the Flask App locally. To run the MNIST API locally, the following steps should be followed:

1. First, the `SFL_MLAPI` repository must be cloned from GitHub at: https://github.com/Mike-Soukup/SFL_MLAPI
2. Start the virtual environment by running `source .mlapi_venv/bin/activate`
3. Execute the `make install` command in the terminal
4. Execute the `make run_flask` command in the terminal