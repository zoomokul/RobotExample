import requests
from bs4 import BeautifulSoup

URL = "https://www.youtube.com/@PickUpLimes/videos"
page = requests.get(URL)

soup = BeautifulSoup(page.content, "html.parser")


job_elements = soup.findAll("div",class_='style-scope ytd-rich-grid-media')

print(job_elements)