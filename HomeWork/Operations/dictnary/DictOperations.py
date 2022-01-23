from loggingFolder.FileLogging import FileLogger

class DictOperation:
    '''
    DicOperations class
    '''

    def __init__(self, dict):
        '''
        Initialize DictOperation class
        '''
        self.dict = dict
        self.logger = FileLogger()
        self.logger.info('DictOperation class initialized')

    # get the keys in the dictionary
    def get_keys(self):
        '''
        Get the keys in the dictionary
        '''
        self.logger.info('Getting keys in the dictionary')
        self.logger.info(f'All the keys in dictionary --> {self.dict.keys()} ')
        return self.dict.keys()

    # get the values in the dictionary
    def get_values(self):
        '''
        Get the values in the dictionary
        '''
        self.logger.info('Getting values in the dictionary')
        self.logger.info(f'All the values in dictionary --> {self.dict.values()} ')
        return self.dict.values()

    # get the items in the dictionary
    def get_items(self):
        '''
        Get the items in the dictionary
        '''
        self.logger.info('Getting items in the dictionary')
        return self.dict.items()

    # get the length of the dictionary
    def get_length(self):
        '''
        Get the length of the dictionary
        '''
        self.logger.info('Getting length of the dictionary')
        return len(self.dict)

    # get the value of the key
    def get_value(self, key):
        '''
        Get the value of the key
        '''
        self.logger.info('Getting value of the key')
        return self.dict[key]

    # check if the key is in the dictionary
    def is_key_in_dict(self, key):
        '''
        Check if the key is in the dictionary
        '''
        self.logger.info('Checking if the key is in the dictionary')
        self.logger.info('Key: ' + str(key) in self.dict)
        return key in self.dict

    # get the key in the dictonary
    def get_key(self, value):
        '''
        Get the key in the dictionary
        '''
        self.logger.info(f'Getting key in the dictionary for the value {self.dict[value]}')
        return self.dict.get(value)

    # insert the dictonary
    def insert_dict(self, key, value):
        '''
        Insert the dictonary
        '''
        self.logger.info('Inserting the dictionary')
        self.dict[key] = value
        self.logger.info(f'Dictionary inserted {self.dict}')
        return self.dict

    # delete the dictonary
    def delete_dict(self, key):
        '''
        Delete the dictonary
        '''
        self.logger.info('Deleting the dictionary')
        del self.dict[key]
        self.logger.info(f'Dictionary deleted {self.dict}')
        return self.dict

