

;;修改：eww搜索引擎
(setq eww-search-prefix "https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=")







;;支持w3m
(add-to-list 'load-path "/usr/share/emacs/site-lisp/w3m-master") 
(require 'w3m)
(setq w3m-home-page "http://www.baidu.com") ;设置主页 
;(require 'mime-w3m) 
;设置显示图片
(setq w3m-default-display-inline-images t)
(setq w3m-default-toggle-inline-images t)
;;显示图标  
(setq w3m-show-graphic-icons-in-header-line t) 
(setq w3m-show-graphic-icons-in-mode-line t)
;;启用cookie  
(setq w3m-use-cookies t)
;设定w3m运行的参数，分别为使用cookie和使用框架 
(setq w3m-command-arguments '("-cookie" "-F"))










;;orgmode的部分设置
;;自动折行
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
