import requests
import os

def download_image():
    # URL of a Creative Commons licensed image of Lalibela
    url = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Lalibela%2C_Ethiopia_%282833666974%29.jpg/1280px-Lalibela%2C_Ethiopia_%282833666974%29.jpg"
    
    # Create assets/images directory if it doesn't exist
    os.makedirs("assets/images", exist_ok=True)
    
    # Download the image
    response = requests.get(url)
    if response.status_code == 200:
        # Save the image
        with open("assets/images/lalibela_bg.jpg", "wb") as f:
            f.write(response.content)
        print("Successfully downloaded Lalibela image!")
    else:
        print("Failed to download image!")

if __name__ == "__main__":
    download_image() 