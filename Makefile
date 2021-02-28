objects = main.o heads.o
CPP = clang++
CPPFLAGS = -std=c++11

hello : $(objects)
	$(CPP) $(CPPFLAGS) $(objects) -o hello
main.o : main.cpp heads.h
	$(CPP) $(CPPFLAGS) -c main.cpp
heads.o : heads.cpp heads.h
	$(CPP) $(CPPFLAGS) -c heads.cpp
	objects = main.o heads.o
CPP = clang++
CPPFLAGS = -std=c++11

hello : $(objects)
	$(CPP) $(CPPFLAGS) $(objects) -o hello
main.o : heads.h
heads.o : heads.h

#清除.o文件
.PHONY : clean
clean :
	-rm $(objects)