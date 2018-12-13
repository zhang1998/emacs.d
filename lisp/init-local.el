;;;... your code here ...

;;;修改emacsw3m主页问题
(setq w3m-home-page "https://cn.bing.com/")
(setq w3m-search-default-engine "bing")

    ;;(reapply-themes) ) ) ;; end of (defun ...
;;(run-with-timer 0 3600 'synchronize-theme)
;;添加python virtualenv位置

(setq venv-location "~/note/python/env3.3.6")
;;添加英语单词服务

(global-set-key (kbd "C-c s") 'kid-sdcv-to-buffer) 
(defun kid-sdcv-to-buffer () 
  (interactive) 
  (let ((word (if mark-active 
		(buffer-substring-no-properties (region-beginning) (region-end)) 
		(current-word nil t)))) 
    (setq word (read-string (format "Search the dictionary for (default %s): " word) 
			    nil nil word)) 
    (set-buffer (get-buffer-create "*sdcv*")) 
    (buffer-disable-undo) 
    (erase-buffer) 
    (let ((process (start-process-shell-command "sdcv" "*sdcv*" "sdcv" "-n" word))) 
      (set-process-sentinel 
	process 
	(lambda (process signal) 
	  (when (memq (process-status process) '(exit signal)) 
	    (unless (string= (buffer-name) "*sdcv*") 
	      (setq kid-sdcv-window-configuration (current-window-configuration)) 
	      (switch-to-buffer-other-window "*sdcv*") 
	      (local-set-key (kbd "d") 'kid-sdcv-to-buffer) 
	      (local-set-key (kbd "q") (lambda () 
					 (interactive) 
					 (bury-buffer) 
					 (unless (null (cdr (window-list))) ; only one window 
					   (delete-window))))) 
	    (goto-char (point-min))))))))

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
