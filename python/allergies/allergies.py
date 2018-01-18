SCORES = {
    'eggs': 1,
    'peanuts': 2,
    'shellfish': 4,
    'strawberries': 8,
    'tomatoes': 16,
    'chocolate': 32,
    'pollen': 64,
    'cats': 128
}
    
class Allergies(object):

    def __init__(self, score):
        self.score = score

    def is_allergic_to(self, item):
        return SCORES.get(item) & self.score > 0

    @property
    def lst(self):
        return [key for key in SCORES.keys() if SCORES.get(key) & self.score > 0]


