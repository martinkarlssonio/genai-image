import generator
import os
import faker

def generateFileName():
    from faker import Faker
    fake = Faker()
    words = [fake.word() for _ in range(3)]
    randomId = '-'.join(words)
    return randomId

if __name__ == "__main__":
    print("App is running")
    prompt = os.environ["PROMPT"]
    fileName = generateFileName()
    generator.generateFromPrompt(prompt, fileName)