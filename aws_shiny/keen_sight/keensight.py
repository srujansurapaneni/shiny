import Algorithmia
import sys
user_input = sys.argv[1:]
input = list(user_input)
client = Algorithmia.client('simITYeMiL/Q0xcxqNBy8oM5ma71')
algo = client.algo('zskurultay/ImageSimilarity/0.1.4')
print algo.pipe(input)