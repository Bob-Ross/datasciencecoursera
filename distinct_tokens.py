#Write a function to parse a text file by sentences. Separate sentences by the
#period ('.') character.
import itertools

def distinct_tokens(filename):
    tokendict = {}
    #f = open(filename, 'r')
    tokens = itertools.imap(lambda L: iter(L.lower.split()), f)
    for tok in itertools.chain.from_iterable(tokens):
        if tok in tokendict:
            tokendict[tok] += 1
        else:
            tokendict[tok] = 1
        #f.close()
        return tokendict
