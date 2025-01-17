(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(if (version< emacs-version "24.4")
    (require 'setup-ivy-counsel)
  (require 'setup-helm)
  (require 'setup-helm-gtags))
;; (require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)
(require 'speedbar)
(speedbar 1)
;;;我的配置
;;(require 'setnu)
;;;设置行号
(global-linum-mode t)
;;(setnu-mode t)
;;(require 'setup-init)
;;; 支持中文
(set-language-environment 'Chinese-GB)

(set-keyboard-coding-system 'euc-cn)

(set-clipboard-coding-system 'euc-cn)

(set-terminal-coding-system 'euc-cn)

(set-buffer-file-coding-system 'euc-cn)

(set-selection-coding-system 'euc-cn)

(prefer-coding-system 'euc-cn)

(setq default-process-coding-system 'euc-cn)

(setq-default pathname-coding-system 'euc-cn)
;;;

;;(speedbar 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;
;; function-args
;; (require 'function-args)
;; (fa-config-default)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(sr-speedbar dashboard-ls zygospore helm-gtags helm yasnippet ws-butler volatile-highlights use-package undo-tree iedit dtrt-indent counsel-projectile company clean-aindent-mode anzu)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




(require 'sr-speedbar)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-width 25)
(setq dframe-update-speed t)
(global-set-key (kbd "<f4>") (lambda()
          (interactive)
          (sr-speedbar-toggle)))
(put 'upcase-region 'disabled nil)
