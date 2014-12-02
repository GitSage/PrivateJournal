import sqlite3


class db_access():
    def __init__(self):
        global config, g
        db = getattr(g, '_database', None)