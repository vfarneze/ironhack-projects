from pandas import DataFrame
from datetime import datetime

class Params:
	"""
	Parameters class.

	This file centralizes anything that can be 
	parametrized in the code.
	"""


	#
	raw_data = '../data/raw/rawdata' + datetime.now().strftime("%Y-%m-%d") + '.csv'
	external_data = '../data/external/'
	processed_data = '../data/processed/'
	intermediate_data = '../data/intermediate/intermediate' + datetime.now().strftime("%Y-%m-%d") + '.csv'

	log_name = '../log/dump.log'

	# if this is set to True, then all the nodes will be automatically 
	# considered not up-to-date and will be rerun.
	rerun = True 

	## Database connection params
	user = 'postgres'
	password = '123qweasd'
	host = 'localhost'
	database = 'Smartphones-DB'

	#Info specific about webscrapping
	url = f'https://www.cinemark.com.br/sao-paulo/filmes/em-cartaz'