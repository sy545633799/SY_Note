# -*-coding:utf-8 -*-
sub1 = 100
sub2 = "an arg"

a = "i am a %s %s" % (sub1, "!!!")
b = "i am a {0}".format(sub1)

c = "with %(kwarg)s!" % {'kwarg':sub2}
d = "with {kwarg}!".format(kwarg=sub2)

print a    # "i am a python string!"
print b    # "i am a python string!"
print c    # "with an arg!"
print d    # "with an arg!"