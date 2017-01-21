import scrapy
from bs4 import BeautifulSoup
from urlparse import urljoin

class HNStorySpider(scrapy.Spider):
    name = 'hn'
    depth = 2

    def start_requests(self):
        urls = ['https://news.ycombinator.com/news']
        for url in urls:
            yield scrapy.Request(url=url, callback=self.parse)
    #or:
    # start_urls = [...]
    
    def parse(self, response):
        soup = BeautifulSoup(response.text)
        for tr in soup('tr', {'class': 'athing'}):
            story_id = tr['id']
            score_id = 'score_{id}'.format(id=story_id)
            score = soup.find('span', {'class': 'score',
                                       'id': 'score_id'})
            if score:
                score_text = score.text
            else:
                score_text = "0 points"
            link = tr.find('a', {'class': 'storylink'})
            yield {'link': link['href'],
                   'score': score_text,
                   'link_text': link.text}
        next_href = soup.find('a', {'class': 'morelink'})['href']
        next_url = urljoin(response.url, next_href)
        yield scrapy.Request(next_url)
