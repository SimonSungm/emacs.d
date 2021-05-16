(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
;;(package-refresh-contents)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (sublime-themes rust-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;for theme load
(let ((basedir "~/.emacs.d/themes/"))
  (dolist (f (directory-files basedir))
    (if (and (not (or (equal f ".") (equal f "..")))
             (file-directory-p (concat basedir f)))
        (add-to-list 'custom-theme-load-path (concat basedir f)))))

;; solarized theme
;;(load-theme 'solarized t)
;;(add-hook 'after-make-frame-functions
;;          (lambda (frame)
;;            (let ((mode (if (display-graphic-p frame) 'light 'dark)))
;;              (set-frame-parameter frame 'background-mode mode)
;;              (set-terminal-parameter frame 'background-mode mode))
;;            (enable-theme 'solarized)))
(load-theme 'hickey t)
