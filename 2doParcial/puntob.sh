ip address show
ssh-keygen
enter
enter
cat .ssh/id_rsa.pub
echo " ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCygG+C76miNI2XPR2lGho9MPxlpD9pyo8zGBQCEQ0X7zLskC4dHFhG5DAe3mbAXwArDjUX4NBeLGVVvQe50ZUY2GJo/GDY9wtvtTJ2eCVGKxte4POnQRqb/ra1eGRqH7qclsPqUs6gkp4iI5GLU8zM5eDRyNTJiKNObZZOyReDZsYAXzW1TKJAZllPpBANIzPsxVdTvoq+8oBVrhfXxVrNKxwigaCpwjfjXUqhbb4EoGvMesltmOgLiCR82XwMi0ZOIFusRqeChQgfagJZzBUFvrNTccDgJgMQUrDfCF8MegJqLQLV/oN6i7vs/qHr21OEt1NAS/k46vHXBOXlUz2fY1bXv0CFRgFcpBQ2IwSbFjTjkCLO73HYC9NZ7n7OK4oGGmdr50gh5W4shvvlHTeW8RADAGGGiGRmkS3OByW+zxfsEphbV7NCYiMDBvjseJ9eEfwQMhiTG6xVJchGSAu1zrPNKjEnD0WSUcnlRgOmBgL4U12RRS4FzeMwymUIoBs= vagrant@vmAnsDev213" >> .ssh/authorized.keys
ssh vagrant@192.168.56.2
closed
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
vim inventory
vim playbook.yml
ansible-playbook -i inventory playbook.yml
sudo apt list --intaled |grep apache


