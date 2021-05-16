CFLAGS?=-g -Wall -Wno-unused-value

all: caltrain #reaction

caltrain: caltrain-runner.c caltrain.c pintos_thread.h
	$(CC) $(CFLAGS) -o caltrain caltrain-runner.c -lpthread 

reaction: reaction-runner.c reaction.c pintos_thread.h
	$(CC) $(CFLAGS) -o reaction reaction-runner.c -lpthread 

run: caltrain reaction
	./caltrain
	./reaction 0
	./reaction 0
	./reaction 20
	./reaction 20
	./reaction 40
	./reaction 40
	./reaction 60
	./reaction 60
	./reaction 80
	./reaction 80
	./reaction 100
	./reaction 100

clean:
	$(RM) caltrain reaction
	$(RM) -r *.dSYM
