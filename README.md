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

TODO: short description of the project

## Functions of the files in the repository

TODO: short description of the files in the repository

## Related works

[[1](https://huggingface.co/blog/annotated-diffusion)] The Annotated Diffusion Model by Niels Rogge and Kashif Rasul

[[2](https://arxiv.org/abs/2006.11239)] Denoising Diffusion Probabilistic Models by Jonathan Ho, Ajay Jain and Pieter Abbeel

[[3](https://keras.io/examples/generative/ddim/)] Denoising Diffusion Implicit Models by András Béres

## How to run it

Build the docker image:
```bash
docker build -t flower-generator .
```

Run the docker image:
```bash
docker run --gpus all --rm -ti flower-generator
```
