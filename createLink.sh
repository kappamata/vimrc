# !bin/sh

VF_ORG=".vimrc"
VF_NEW_PATH=$HOME/vimrc/.vimrc

# バックアップを作成
if [ -e $HOME/${VF_ORG}  ]; then
    cp -pi $HOME/${VF_ORG} $HOME/${VF_ORG}_`date "+%Y%m%d%H%M%S"`
fi

ln -si ${VF_NEW_PATH} $HOME/${VF_ORG}
