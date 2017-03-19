from datetime import datetime
import unittest

def ymd(date_string):
    format_string = '%Y %m %d'
    return datetime.strptime(date_string, format_string)

class YMDTest(unittest.TestCase):
    def test_with_known_values(self):
        ymd_result = ymd('2016 01 30')
        known = datetime(2016, 1, 30, 0, 0)
        self.assertEqual(ymd_result, known)
    def test_throws_on_invalid_string(self):
        with self.assertRaises(ValueError):
            ymd('')
