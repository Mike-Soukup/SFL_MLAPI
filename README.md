# Overview page for MNIST ML API:

This repo represents the source code for deploying a Flask API end point for a Support Vector Machine (SVM) that will predict which digit is displayed with a 28 x 28 pixel image from the famouse MNIST data set. 

There are three ways for users to interact with this API:

## 1 Azure Web App:
The API is currently hosted on Azure and can be accessed publically by visiting: https://mnist-mlapi.azurewebsites.net/

Once the user has arrived at this webpage, they can select the `MNIST API` card which will direct them to the API landing page. 

The user is then able to upload an MNIST image and a digit prediction will be retrieved. Additionally, the JSON prediction will be returned showing the user what the RESTful payload will look like.

### Deploying this repo into Azure:
Assuming the user has an Azure Cloud Subscrition, the following steps can be taken in order to deploy this MNIST API into a Web App. 

1. Find the App Services Resource within the Azure Portal:
    - Can either search for `App Services` in the search bar OR:
    - Search for `App Services` in the Azure portal menu
2. Click `+ Create` -> `+ Web App`
3. Configure the Web App resource, then select `Review + create`
    - In the Resource Group field, select `Create new` and enter a resource group name
    - Provide a name to the website you will create
    - Select the Runtime your code will run with; I used `Python 3.8` for this repo
    - Select the region of deployment such as `us-east`
    - Select the App Service plan; for best development results, I recommend using `B1`
4. There are various was to deploy the app, I recommend using the Azure Portal to set up the deployment instructions and then using your terminal to push your source code similar to how you would with a git repo
    - Select your resource and go to `Deployment Center`
    - Select `Local Git` and press save, the screen will update accordingly. Most notably and `Git Clone Uri` will be provided for you to push your source code to
5. Set the `Git Clone Uri` as a remote target to push your source code:
    - Enter `git remote add azure <git-clone-uri>`
    - Then enter `git push azure main:master`
        - You will be prompted to enter the username and password which can be found in the `Local Git/FTPS` section of the resources `Deployment Center`

For additional resources refer to the following Azure Documentation: https://learn.microsoft.com/en-us/azure/app-service/quickstart-python?tabs=flask%2Cwindows%2Cazure-portal%2Clocal-git-deploy%2Cdeploy-instructions-azportal%2Cterminal-bash%2Cdeploy-instructions-zip-azcli 

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