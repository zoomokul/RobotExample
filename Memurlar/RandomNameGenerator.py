from robot.api.deco import keyword

from faker import Faker


class RandomNameGenerator:
    def __init__(self):
        self.faker = Faker()

    @keyword
    def generate_random_name(self):
        return self.faker.name()
