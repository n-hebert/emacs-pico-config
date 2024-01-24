# For Colors in Emac's shell (particularly in the GUI mode, as termimal mode needs no change)
# See:
# https://www.gnu.org/software/emacs/manual/html_mono/efaq.html#Colors-on-a-TTY and run its first code block as such:
#  $ cat > terminfo-custom.src <<EOS
#  xterm-emacs|xterm with 24-bit direct color mode for Emacs,
#    use=xterm-256color,
#    setb24=\E[48\:2\:\:%p1%{65536}%/%d\:%p1%{256}%/%{255}%&\
#       %d\:%p1%{255}%&%dm,
#    setf24=\E[38\:2\:\:%p1%{65536}%/%d\:%p1%{256}%/%{255}%&\
#       %d\:%p1%{255}%&%dm,
#  EOS
#  $ tic -x -o ~/.terminfo terminfo-custom.src 
#
#   c/o https://stackoverflow.com/questions/63950/how-to-make-emacs-terminal-colors-the-same-as-emacs-gui-colors
# The following line below is also useful
#   c.f. https://stackoverflow.com/questions/48574369/setting-term-variable-for-emacs-shell
export TERM=xterm-emacs
export GIT_EDITOR=emacs
