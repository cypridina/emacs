; Darrin's Emacs Config File
; January 8 2013

; Numbers
(global-linum-mode t)
(setq linum-format "%4d ") ; \u502 is the bar

;(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/zen-and-art-theme-1.0.1/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/ujelly-theme-1.0.10/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/tron-theme-12/")
;(require 'zen-and-art)
;(load-theme 'zen-and-art t)

;Marmalade + Melpa
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;Menu Bar
(menu-bar-mode -1)

; Set Global Indents
(setq perl-indent-level 4)
(setq python-indent-level 4)
(setq ess-indent-level 4)
(setq indent-tabs-mode nil)

; highlight lines lones than 80 chars
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

; ESS
(require 'ess-site)
(setq comint-scroll-to-bottom-on-output t)
(setq ess-arg-function-offset 4)
(setq ess-else-offset 4)

      ; this remembers commands that start with the fist several leters of what
      ; I have typed into the buffer, and tries to autocomplete them. ESS only
      (add-hook 'inferior-ess-mode-hook
		  '(lambda nil
		          (define-key inferior-ess-mode-map [\C-up]
			           'comint-previous-matching-input-from-input)
			       (define-key inferior-ess-mode-map [\C-down]
				        'comint-next-matching-input-from-input)
			            (define-key inferior-ess-mode-map [\C-x \t]
				          'comint-dynamic-complete-filename)
				       )
       )

; Set up line/column mode
(setq line-number-mode t)
(setq column-number-mode t)

; Change keyboard Bindings
(setq mac-option-modifier 'control)
(setq mac-command-modifier 'meta)
(setq set-keyboard-coding-system nil)

;TeX mode
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-save-query nil)
;(setq TeX-PDF-mode t)

;Spell Check
(setq ispell-program-name "aspell"
  ispell-extra-args '("--sug-mode=ultra"))

(add-hook 'org-mode-hook
  (lambda()
    (flyspell-mode 1)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"])
 '(ansi-term-color-vector [unspecified "#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"])
 '(custom-enabled-themes (quote (zen-and-art)))
 '(custom-safe-themes (quote ("5cb805901c33a175f7505c8a8b83c43c39fb84fbae4e14cfb4d1a6c83dabbfba" "085b401decc10018d8ed2572f65c5ba96864486062c0a2391372223294f89460" "27470eddcaeb3507eca2760710cc7c43f1b53854372592a3afa008268bcf7a75" "f38dd27d6462c0dac285aa95ae28aeb7df7e545f8930688c18960aeaf4e807ed" "6cfe5b2f818c7b52723f3e121d1157cf9d95ed8923dbc1b47f392da80ef7495d" "fca8ce385e5424064320d2790297f735ecfde494674193b061b9ac371526d059" "159bb8f86836ea30261ece64ac695dc490e871d57107016c09f286146f0dae64" "c56fd34f8f404e6e9e6f226c6ce2d170595acc001741644d22b49e457e3cd497" "6615e5aefae7d222a0c252c81aac52c4efb2218d35dfbb93c023c4b94d3fa0db" "27b53b2085c977a8919f25a3a76e013ef443362d887d52eaa7121e6f92434972" "967c58175840fcea30b56f2a5a326b232d4939393bed59339d21e46cf4798ecf" "6bc195f4f8f9cf1a4b1946a12e33de2b156ce44e384fbc54f1bae5b81e3f5496" "8281168b824a806489ca7d22e60bb15020bf6eecd64c25088c85b3fd806fc341" "2611d548a133727b1a956c4fa262935e993662a0aaa25d9532b04ab8f556a25b" "9eb87246fbfc73fd1355a13c8cb76fdb993f47de39113c0d45a9e918cc287b72" "5e1d1564b6a2435a2054aa345e81c89539a72c4cad8536cfe02583e0b7d5e2fa" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" "21d9280256d9d3cf79cbcf62c3e7f3f243209e6251b215aede5026e0c5ad853f" "d2622a2a2966905a5237b54f35996ca6fda2f79a9253d44793cfe31079e3c92b" "501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" "72cc9ae08503b8e977801c6d6ec17043b55313cda34bcf0e6921f2f04cf2da56" "30fe7e72186c728bd7c3e1b8d67bc10b846119c45a0f35c972ed427c45bacc19" "71efabb175ea1cf5c9768f10dad62bb2606f41d110152f4ace675325d28df8bd" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(fci-rule-character-color "#d9d9d9")
 '(fci-rule-color "#d9d9d9")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors (quote (("#F2F2F2" . 0) ("#B4C342" . 20) ("#69CABF" . 30) ("#6DA8D2" . 50) ("#DEB542" . 60) ("#F2804F" . 70) ("#F771AC" . 85) ("#F2F2F2" . 100)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )