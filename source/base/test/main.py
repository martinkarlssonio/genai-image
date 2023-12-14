import generator

if __name__ == "__main__":
    print("App is running")
    prompt = "A brown dachshund with spots in its fur eating a bone."
    fileName = "test"
    generator.generateFromPrompt(prompt, fileName)
