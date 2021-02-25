Tutorial from https://github.com/davidcallanan/os-series/tree/ep1

File named Dockerfile in Folder buildenv. 
build docker: docker build buildenv -t phseos-buildenv
Run the docker vm (shared driver under setting, but should be without wsl2)
docker run --rm -it -v "${pwd}:/root/env" phseos-buildenv

run OS:
qemu-system-x86_64 -cdrom dist/x86_64/kernel.iso -L "C:\Program Files\qemu"