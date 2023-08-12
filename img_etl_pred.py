import sklearn
import pickle
import numpy as np
from PIL import Image

def load_model(model_path: str):
    """Driver function to load in our model"""
    model = pickle.load(open(model_path, 'rb'))
    return model

def make_prediction(img_path):
    '''Driver funtion to make prediction on input Fashion MNIST image'''
    ### Load MNIST Model
    model_path = r'./model/mnist_svm.pickle'
    model = load_model(model_path)
    ### Load in the image:
    with Image.open(img_path) as img:
        img.load()
    ### Convert to array:
    im_arr = np.asarray(img)
    im_arr = im_arr/255.0
    im_arr = np.reshape(im_arr, (784,))
    pred = model.predict([im_arr])[0]
    return pred
