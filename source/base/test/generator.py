import torch
from diffusers import PixArtAlphaPipeline

def generateFromPrompt(prompt, fileName):
    print("Generating image for prompt: " + prompt)
    print("Saving image as: " + fileName + ".png")

    # Load the pipeline
    pipe = PixArtAlphaPipeline.from_pretrained(
        "PixArt-alpha/pixArt-XL-2-1024-MS",
        torch_dtype=torch.float32
    )

    # Generate the image
    image = pipe(prompt).images[0]

    # Save the image
    image.save(f"{fileName}.png")
