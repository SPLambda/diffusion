import tensorflow_datasets as tfds


def main():
    ds = tfds.load("oxford_flowers102", split="train")
    ds = ds.take(1)  # Only take a single example

    for example in ds:
        print(list(example.keys()))
        image = example["image"]
        label = example["label"]
        print(image.shape, label)


if __name__ == "__main__":
    main()
