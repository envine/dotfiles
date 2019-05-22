
# .bash_aliases�̒��g
echo '.bash_aliases'

# Aliases for MSYS2 bash
# alias hoge���ꎞ�I�ɖ����ɂ���ɂ�\hoge

# �ړ����₷��
alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

# ls���g���₷��
alias ls='ls --color=auto --show-control-chars --time-style=long-iso -FH'
alias ll='ls -lA'
alias la='ls -A'
alias sl=ls

# �ݒ�̓ǂݍ���
alias relogin='exec $SHELL -l'
alias re=relogin

# ��ʏ���
alias c=clear
alias cls=reset

# Windows���ۂ�
alias dir=ll
alias path='echo -e ${PATH//:/\\n}'

# �f�B�X�N�T�C�Y
alias df='df -h'
alias du='du -h'
alias du1='du -d1'

# grep���g���₷��
# grep -r hoge��./�ȉ��̃t�@�C���̒��g����hoge������
# find | grep hoge��./�ȉ��̃t�@�C��������hoge������
# whereis hoge�ŃR�}���h�̊֘A�ꏊ������(bin, src, man)
# type -a hoge�ŃR�}���h������
alias grep='grep --color'

# Windows�R�}���h���������΍�
function wincmd()
{
    CMD=$1
    shift
    $CMD $* 2>&1 | iconv -f CP932 -t UTF-8
}
alias cmd='winpty cmd'
alias psh='winpty powershell'
alias ipconfig='wincmd ipconfig'
alias netstat='wincmd netstat'
alias netsh='wincmd netsh'
alias python2='winpty python2'
alias python3='winpty python3'

alias python="winpty python"
alias ipython="winpty ipython"
alias jupyter="winpty jupyter"

# ping�̃R�}���h������������邽�ߐ�΃p�X�Ŏw��
alias ping='wincmd /c/windows/system32/ping'

# �l�b�g���[�N�m�F�p
alias ping1='ping www.google.com'
alias ping2='ping 192.168.0.1'

# mingw32�p
# msys��make�Ɣ��Ȃ��悤�ɃR�}���h�����ς����Ă���
#alias make='mingw32-make'
#alias m='make -j3'

# �悭�g���v���O����
alias atom='/c/Users/acidc/AppData/Local/atom/atom.exe'
alias gnuplot='winpty /c/"Program Files"/gnuplot/bin/gnuplot.exe'