master:
	git push origin $@

%:
	-git branch --delete $@ && git push origin :$@
	git symbolic-ref refs/heads/$@ refs/heads/master && git push origin $@

all:

clean:
	rm -rf *~

.PHONY: all clean
