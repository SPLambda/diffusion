# Image generation with diffusion models

## Team

Name: **Lambda**

Members:

| Name            | Neptun code |
| --------------- | ----------- |
| Somorjai Márk   | FAFSAG      |
| Szommer Zsombor | MM5NOT      |
| Telbisz Csanád  | ESV6L2      |

## Project description

The goal of the project is to generate images using diffusion models. We will implement the models based on the referenced related works.

We will use the datasets [Oxford 102 Flower Dataset](https://www.robots.ox.ac.uk/~vgg/data/flowers/102/) and [Oxford-IIIT Pet Dataset](https://www.robots.ox.ac.uk/~vgg/data/pets/) to evaluate our models.

## Functions of the files in the repository

- `main.py`: this python script will contain the final code of the project (model, training, evaluation, etc.) that can be run in a containerized environment; it is dummy file for now
- `solution.py`: we use this notebook during the development; currently, it contains data loading and preparation steps
- `requirements.txt`: the list of the required python packages to run the code in a containerized environment
- `Dockerfile`: the description of the Docker container
- `README.md`: this file

## Related works

[[1](https://huggingface.co/blog/annotated-diffusion)] The Annotated Diffusion Model by Niels Rogge and Kashif Rasul

[[2](https://arxiv.org/abs/2006.11239)] Denoising Diffusion Probabilistic Models by Jonathan Ho, Ajay Jain and Pieter Abbeel

[[3](https://keras.io/examples/generative/ddim/)] Denoising Diffusion Implicit Models by András Béres

[[4](https://keras.io/examples/generative/ddpm/)] Denoising Diffusion Probabilistic Model by Aakash Kumar Nain

## How to run it

Build the docker image:
```bash
docker build -t image-generator .
```

Run the docker image:
```bash
docker run --gpus all --rm -ti image-generator
```
