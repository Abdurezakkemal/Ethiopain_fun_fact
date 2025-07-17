import urllib.request
import os

def download_coffee_sound():
    # Create audio directory if it doesn't exist
    os.makedirs('assets/audio', exist_ok=True)
    
    # URL of the coffee pouring sound (this is a direct download link to a Creative Commons licensed sound)
    url = "https://cdn.freesound.org/previews/515/515685_10991615-lq.mp3"
    
    # Download the file
    output_file = "assets/audio/coffee_pour.mp3"
    print(f"Downloading coffee pouring sound to {output_file}...")
    
    try:
        urllib.request.urlretrieve(url, output_file)
        print("Download completed successfully!")
    except Exception as e:
        print(f"Error downloading the file: {e}")
        return False
    
    return True

if __name__ == "__main__":
    download_coffee_sound() 