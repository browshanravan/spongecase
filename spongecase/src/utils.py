import random


def spong_word(word:str):
	split_word=[]
	for i in word:
		split_word.append(i.lower()) if random.randint(0,1) == 0 else split_word.append(i.upper())

	return "".join(split_word)


def spong_phrase(phrase:str):
	split_phrase= []
	for x in phrase.split(" "):
		split_phrase.append(spong_word(x))


	return " ".join(split_phrase)