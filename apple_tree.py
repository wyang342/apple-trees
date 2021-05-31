from apple import Apple


class AppleTree:
    def __init__(self):
        self.age = 0
        self.height = 0
        self.apples = []

    def age_tree(self):
        self.age += 1
        if self.height < 99:
            self.height += 2

        for i in range(self.height // 2):
            self.apples.append(Apple())

    def is_dead(self):
        if self.age >= 100:
            return True
        else:
            return False

    def any_apples(self):
        if self.apples:
            return True
        else:
            return False

    def pick_an_apple(self):
        if self.apples:
            picked_apple = self.apples.pop()
            return picked_apple
        else:
            raise Exception('No apples on your tree')
