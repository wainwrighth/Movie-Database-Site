from __future__ import print_function
def main():

	o_movies = [[(('Mulan',),), (('Mulan',),), (('Tony Bancroft',), ('Barry Cook',)), (('Pam Coats',), ('Chris Bender',)), (('Girl disgraces family, but makes up for it big time',),), (('1998-06-19',),)]]
	movies = [[[u'Top Gun']], (('English',),), (('109',),), (('1986-05-16',),), (('Movie about two best friends who are Naval pilots',),), (('Tom Cruise',), ('Val Kilmer',)), (('Tony Scott',),), (('Don Simpson',), ('Jerry Bruckheimer',)), (('Jim Cash',), ('Jack Epps, Jr.',)), (('Chris Lebenzon',), ('Billy Weber',)), (('Drama',), ('Action',)), (('pilot',), ('friends',), ('navy',), ('planes',), ('war',))]
	
	for i in movies:
		print (i)
		for j in i:
			print ("\t" , end=" ")
			print (j)
			for k in j:
				print ("\t \t" , end=" ")
				print (k)

	#print (new_movie)
	a(movies)

def a(movies):
	#movies = [[(('Mulan',),), (('Mulan',),), (('Tony Bancroft',), ('Barry Cook',)), (('Pam Coats',), ('Chris Bender',)), (('Girl disgraces family, but makes up for it big time',),), (('1998-06-19',),)]]

	all_movies = []
	
	for i in movies:
		temp = []
		if len(i) > 1:
			for j in i:
				for k in j:
					print (k, end=" ")
					temp.append(k)
			all_movies.append(temp)
			print ()
		else:
			for j in i:
				for k in j:
					print ("yoo",k)
					temp.append(k)
			all_movies.append(temp)

	print (all_movies)






main()