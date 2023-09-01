
GIT_REF=$(shell git rev-parse --short HEAD)
COMMITID?=${GIT_REF}
GOPKG=github.com/popkakkk/tadam-profile
DATE=`date -u '+%Y-%m-%d_%I:%M:%S%p'`
BUILDFLAGS= -ldflags "-X main.date=$(DATE) -X main.release=$(COMMITID)"


svc:
	go build $(BUILDFLAGS) -o profile-svc $(GOPKG)/cmd