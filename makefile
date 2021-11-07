# loops : basicClassification.o advancedClassification.o NumClass.h
# 	ar rcs -wall libclassloops.a basicClassification.o advancedClassification.o NumClass.h

# recursives : basicClassification.o advancedClassificationRecursion.o NumClass.h
# 	ar rcs -wall libclassrec.a basicClassification.o advancedClassificationRecursion.o NumClass.h

# recursived:  basicClassification.o advancedClassificationRecursion.o NumClass.h
# 	gcc -shared -wall libclassrec.so basicClassification.o advancedClassificationRecursion.o  NumClass.h

# loopd : basicClassification.o advancedClassification.o NumClass.h
# 	gcc -shared -wall basicClassification.o advancedClassification.o NumClass.h

# mains : main.o libclassrec.a 
# 	gcc -wall main.o libclassrec.a

# maindloopd : main.o libclassloops.so
# 	gcc -wall main.o libclassloops.so

# maindrec : main.o libclassrec.so
# 	gcc -wall main.o libclassrec.so

# all : loops, recursives, recursived, loopd, mains, maindloopd

# .PHONY : clean all

# clean :
# 	rm loops recursives recursived loopd mains maindloopd *.o

# basicClassification.o : basicClassification.c 
# 	gcc -c 


advancedClassificationLoop.o : advancedClassificationLoop.c NumClass.h 
	gcc -c -Wall advancedClassificationLoop.c

advancedClassificationRecursion.o : advancedClassificationRecursion.c NumClass.h
	gcc -c -Wall advancedClassificationRecursion.c

basicClassification.o : basicClassification.c NumClass.h
	gcc -c -Wall basicClassification.c


.PHONY : clean
clean : 
	rm *.o *.a *.so mains maindloopd maindrec

main.o : main.c NumClass.h
	gcc -c -Wall main.c 
loops : libclassloops.a

libclassloops.a : basicClassification.o advancedClassificationLoop.o 
	ar rcu libclassloops.a basicClassification.o advancedClassificationLoop.o

recursives : libclassrec.a

libclassrec.a : basicClassification.o advancedClassificationRecursion.o
	ar rcu libclassrec.a basicClassification.o advancedClassificationRecursion.o

recursived : libclassrec.so

libclassrec.so : basicClassification.o advancedClassificationRecursion.o
	gcc -shared -o libclassrec.so basicClassification.o advancedClassificationRecursion.o

loopd : libclassloops.so

libclassloops.so : basicClassification.o advancedClassificationLoop.o
	gcc -shared -o libclassloops.so basicClassification.o advancedClassificationLoop.o

mains : main.o libclassrec.a 
	gcc -Wall main.o -lclassrec -L. -o mains -lm

maindloopd : main.o libclassloops.so 
	gcc -Wall main.o -lclassloops -L. -o maindloopd -lm

maindrec : main.o libclassrec.so
	gcc -Wall main.o -lclassrec -L. -o maindrec -lm

all : mains maindloopd maindrec	loops
 



