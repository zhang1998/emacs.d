;;;... your code here ...

;;;修改emacsw3m主页问题
(setq w3m-home-page "https://cn.bing.com/")
(setq w3m-search-default-engine "bing")

    ;;(reapply-themes) ) ) ;; end of (defun ...
;;(run-with-timer 0 3600 'synchronize-theme)



;;;orgmode 自动折行
;orgmode的部分设置
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
;;add indent
(setq org-startup-indented t)
;;设置主题
(load-theme 'tangotango t)
(provide 'init-local)
