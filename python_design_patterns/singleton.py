class Borg:
    _share_state = {}

    def __init__(self):
        self.__dict__ = self._share_state


class Singleton(Borg):
    def __init__(self, **kwargs):
        Borg.__init__(self)
        self._share_state.update(kwargs)

    def __str__(self):
        return str(self._share_state)


# test
x = Singleton(HTTP="Hyper Text Transfer Protocol")
print(x)

y = Singleton(SNMP="Simple Network Management Protocol")
print(y)
