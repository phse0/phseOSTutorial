Not written on my own, followed the instruction from the Tutorial:
Tutorial from https://github.com/davidcallanan/os-series/tree/ep1 and https://github.com/davidcallanan/os-series/tree/ep2 (https://www.youtube.com/watch?v=wz9CZBeXR6U)

install docker for windows and qemu (i am running docker with hyperv and not wsl2)

Docker is used for compiling asm and c files 
File named Dockerfile in Folder buildenv. 
build docker: docker build buildenv -t phseos-buildenv
Run the docker vm (shared driver under setting, but should be without wsl2)
docker run --rm -it -v "${pwd}:/root/env" phseos-buildenv
build code: make build-x86_64

run OS:
qemu-system-x86_64 -cdrom dist/x86_64/kernel.iso -L "C:\Program Files\qemu"



helpful stuff:

    Linux or MacOS: docker run --rm -it -v "$pwd":/root/env myos-buildenv
    Windows (CMD): docker run --rm -it -v "%cd%":/root/env myos-buildenv
    Windows (PowerShell): docker run --rm -it -v "${pwd}:/root/env" myos-buildenv
    NOTE: If you are having trouble with an unshared drive, ensure your docker daemon has access to the drive you're development environment is in. For Docker Desktop, this is in "Settings > Shared Drives" or "Settings > Resources > File Sharing".
