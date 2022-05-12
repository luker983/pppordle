# make distribution tarball, use gnu sed and gnu tar
SERVER=localhost
OFILE=pppordle.tar.gz

CFLAGS += -czvf $(OFILE)
# files with same name as non-distributed files will have dist. prefix stripped
CFLAGS += --transform 's/dist\.//'
# place files into pppordle/ to avoid making a mess
CFLAGS += --transform 's/^/pppordle\//'

# sensitive files that we need to exclude
CFLAGS += --exclude '*/ca.key'
CFLAGS += --exclude '*/flag1.txt'
CFLAGS += --exclude '*/flag2.txt'
CFLAGS += --exclude '*/pppordle.log'

# change to domain of real server
# replace first instance of domain = "..." to domain = "$(SERVER)"
REPLACE='0,/domain.*=.*/s//domain = "$(SERVER)"/'
RFILES += server/server.go client/client.go

# include these files and directories (keep in mind exclusions)
FILES += dist.README.md go.mod go.sum
FILES += cert/
FILES += check/
FILES += client/
FILES += game/
FILES += server/

.PHONY: distribute rewrite clean
dist: rewrite
	tar $(CFLAGS) $(FILES)

rewrite:
	sed -i $(REPLACE) $(RFILES)

clean:
	rm -vf ./$(OFILE)
