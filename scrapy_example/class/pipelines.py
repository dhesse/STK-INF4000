# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html
from urlparse import urlparse

class PointsToInt(object):
    def process_item(self, item, spider):
        item['score'] = int(item['score'].split()[0])
        return item

class Domain(object):
    def process_item(self, item, spider):
        item['domain'] = urlparse(item['link']).netloc
        return item
