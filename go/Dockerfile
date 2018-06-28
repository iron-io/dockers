FROM iron/base:edge

RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

# The Go image doesn't need anything else.
# Use iron/go:dev to build.
