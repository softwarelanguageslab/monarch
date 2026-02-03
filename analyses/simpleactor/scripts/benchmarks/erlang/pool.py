
class ProcessPool():
    """
    An abstraction to control the number of forked processes
    """

    def __init__(self, n: int):
        """
        :param n the number of concurrent processes
        """
        self.__n = n

