# Image generation with diffusion models

## Team

Name: **Lambda**

Members:

| Name            | Neptun code |
|-----------------|-------------|
| Somorjai Márk   | FAFSAG      |
| Szommer Zsombor | MM5NOT      |
| Telbisz Csanád  | ESV6L2      |

## Project description

The goal of the project is to generate images using diffusion models. A deployment of our image generating model can be tried out on [HuggingFace](https://huggingface.co/spaces/Melidon/flower-generation).

We have implemented the models based on the referenced related works. We use the datasets [Oxford 102 Flower Dataset](https://www.robots.ox.ac.uk/~vgg/data/flowers/102/) and [Oxford-IIIT Pet Dataset](https://www.robots.ox.ac.uk/~vgg/data/pets/) to evaluate our models.

## Functions of the files in the repository

- `solution.py`: the notebook containing the solution (model, training process, evaluation)
- `requirements_nbconverter.txt` and `requirements_trainer.txt`: the list of the required python packages to run the code in a containerized environment
- `Dockerfile`: the description of the Docker container
- `documentation.pdf`: documentation of the project
- `presentation.pptx` and `presentation.pdf`: presentation of the project for the exam
- `README.md`: this file

## Related works

[[1](https://arxiv.org/abs/2006.11239)] Denoising Diffusion Probabilistic Models by Jonathan Ho, Ajay Jain and Pieter Abbeel

[[2](https://huggingface.co/blog/annotated-diffusion)] The Annotated Diffusion Model by Niels Rogge and Kashif Rasul

[[3](https://keras.io/examples/generative/ddim/)] Denoising Diffusion Implicit Models by András Béres

[[4](https://keras.io/examples/generative/ddpm/)] Denoising Diffusion Probabilistic Model by Aakash Kumar Nain

## How to run it

Build the trainer docker image:
```bash
docker build -t image-generator .
```

Run the trainer docker image:
```bash
docker run --gpus all --rm -ti -v $(pwd)/outputs:/app/outputs image-generator
```
