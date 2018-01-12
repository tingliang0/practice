class Dog:
    def speak(self):
        return "Woof!"

    def __str__(self):
        return "Dog"


class DogFactory:
    def get_pet(self):
        """ Returns a Dog object"""
        return Dog()

    def get_food(self):
        """Return a Dog Food object"""
        return "Dog Food!"


class PetStore:
    def __init__(self, pet_factory=None):
        """ pet_factory is our Abstract Factory """
        self._pet_factory = pet_factory

    def show_pet(self):
        pet = self._pet_factory.get_pet()
        pet_food = self._pet_factory.get_food()
        print("Our pet is '{}'".format(pet))
        print("Out pet says hello by '{}'".format(pet.speak()))
        print("Its food is '{}'".format(pet_food))


# test
factory = DogFactory()
shop = PetStore(factory)
shop.show_pet()
