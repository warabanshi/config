## python devleopment environment

setup virtual environment
```
$ python3 -m venv /path/to/venv
```

if venv failed with message like "Error: Command '['/home/warabanshi/development/test/bin/python3', '-Im', 'ensurepip', '--upgrade', '--default-pip']' returned non-zero exit status 1." then generate venv without pip like

```
$ python3 -m venv --without-pip /path/to/env
```

and install pip manuall as follows

```
$ . /path/to/env
$ curl https://bootstrap.pypa.io/get-pip.py | python
$ deactivate
$ . /path/to/env
$ pip install --upgrade pip
```

### installed package on opensuse Leap15.2 for pyenv

```
$ zypper in -y gcc zlib-devel readline-devel libbz2-devel libopenssl-devel sqlite3-devel
```

### install pyenv

```
$ git clone https://github.com/pyenv/pyenv.git ~/.pyenv
$ echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
$ echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
$ echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
```

### install flake8

for python syntax check, install flake8 and set syntactic vim plugin
```
$ pip install flake8
```

### setup minikube

prerequisite
- more than 2 available CPUs
- turn on nested VT-s/AMD-V on virtualbox manager (settings -> system -> processor)

1. install required package

    $ sudo zypper in docker kvm

2. set docker running on boot (and reboot system if required)

3. add docker group

    $ usermod -aG docker (username) && newgrp docker

4. install minikube follows below instruction. you shoudn't use `zypper in minikube` because it will install too old version.
    https://kubernetes.io/ja/docs/tasks/tools/install-minikube/
