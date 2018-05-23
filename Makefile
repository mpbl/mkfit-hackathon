objects = gplex_mul.o  gpu_utils.o

all: $(objects)
	nvcc -o multorture multorture.cc $(objects)

%.o: %.cu
	nvcc -std=c++11 -I ${CUBROOT} -c $< -o $@  --ptxas-options=-v -arch=sm_60
clean:
	rm -f *.o multorture
