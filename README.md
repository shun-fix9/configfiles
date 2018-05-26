# configfiles

configfiles for termux on android

```
# update all plugin repositories
myplugin_update
```


###### Table of Contents

- [Requirements](#Requirements)
- [Usage](#Usage)
- [Install](#Install)
- [License](#License)

<a id="Requirements"></a>
## Requirements

- Android 6.0
- termux 0.60


<a id="Usage"></a>
## Usage

### update plugins

```
myplugin_update
```

1. git remote update
1. git fetch
1. git checkout master
1. git pull

### load plugins

```
myplugin_load
```

1. add all `~/.plugins/*/*/bin` to PATH

### manage plugins

edit `bash/plugins.sh`

```
# bash/plugins.sh

# list all repositories you want to use

myplugin_setup https://github.com/sanzen-sekai/mypassword.git
```

#### myplugin_setup

1. clone repository to `~/.plugins/${user}/${repository}`


<a id="Install"></a>
## Install

```
git clone https://github.com/shun-fix9/configfiles.git ~/.config
echo ". ~/.config/bash/init.sh" >> ~/.bashrc
. ~/.config/bash/init.sh
```

### Upgrade

```
cd ~/.config
git pull
. ~/.config/bash/init.sh
```


<a id="License"></a>
## License

configfiles is licensed under the [MIT](LICENSE) license.

Copyright &copy; since 2018 shun.fix9
