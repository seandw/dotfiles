(unless (boundp 'user-emacs-directory)
  (defvar user-emacs-directory "~/.emacs.d/"
    "Directory beneath which additional per-user Emacs-specific
    files are placed. Various programs in Emacs store information
    in this directory. Note that this should end with a directory
    separator. See also 'locate-user-emacs-file'."))

(add-to-list 'load-path user-emacs-directory)
(require 'better-defaults)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(unless (package-installed-p 'scala-mode2)
  (package-refresh-contents) (package-install 'scala-mode2))
