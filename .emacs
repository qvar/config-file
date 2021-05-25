;; full screen mode
(set-frame-parameter nil 'fullscreen 'fullboth)

;; hide tool bar
(tool-bar-mode -1)
;; hide scrool bar
(scroll-bar-mode -1)
;;hide menu bar
(menu-bar-mode -1)

;; display line number
(global-display-line-numbers-mode)

;;ivy mode
(ivy-mode 1)

;;swiper
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-r") 'swiper)

;;counsel
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;;avy mode
(setq avy-all-windows 'all-frames)
(setq avy-timeout-seconds 1.0)
(global-set-key (kbd "C-:") 'avy-goto-line)
(global-set-key (kbd "C-;") 'avy-goto-char-timer)
;; isearch + avy, use C-'
(avy-setup-default)

;;ibuffer
(ibuffer 1)
(global-set-key (kbd "C-x C-b") 'ibuffer)
