# Done with Param Trivedi 121033 and Raj Jhala 121042

#DEADLOCK CONDITION:

RESOURCES = [ 3, 1, 1, 2 ]

ALLOCATED = [ [1, 2, 2, 1], [1, 0, 3, 3], [1, 2, 1, 0], ]

MAX = [ [3, 3, 2, 2], [8, 8, 8, 8], [8, 8, 8, 8] ]

#uncomment below matrix to see allocations.
# you can change the matrix with any no. of resources.

#WORKING CONDITION:

#RESOURCES = [ 0,1,1 ]

#ALLOCATED = [ [1,0,0], [6,1,2], [2,1,1], [0,0,2],]

#MAX = [ [3,2,2], [6,1,3], [3,1,4], [4,2,2],]

def allocate(allocated, maxi, res):

    if len(allocated)==1:

        safe=1

        for i in range(len(res)):

            if(res[i]<(maxi[0][i]-allocated[0][i])):

                safe=0

        if safe:

            return 1

        else:

            return 0

    #LENGTH is not 1. So you should try all permutations.

    for p in range(len(allocated)):

        safe = 1

        for i in range(len(allocated[p])):

            if res[i]<(maxi[p][i]-allocated[p][i]):

                safe=0

        if safe:

            new_allocated=allocated[:p]+allocated[p+1:]

            new_maxi=maxi[:p]+maxi[p+1:]

            new_res = res[:]

            new_res=[res[i]+allocated[p][i] for i in range(len(res))]

            if allocate(new_allocated, new_maxi, new_res):

                print 'Incoming request: '

                print 'maximum: \n%s'%('\n'.join([' '.join([str(item) for item in row]) for row in maxi]))

                print 'allocated: \n%s'%('\n'.join([' '.join([str(item) for item in row]) for row in allocated]))

                print 'resources in hand: %s'%(res)

                print 'Allocated %s to %s'%([maxi[p][i]-allocated[p][i] for i in range(len(maxi[p]))], p)

                print ''

                print ''

                return 1

               

            else:

                return 0

        else: 

            continue

    print "Couldnt allocate"

    return 0

if allocate(ALLOCATED, MAX, RESOURCES):

    print "Done"
