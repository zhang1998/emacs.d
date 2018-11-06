;;支持w3m
(add-to-list 'load-path "/usr/share/emacs/site-lisp/w3m-master") 
(require 'w3m)
(setq w3m-home-page "https://www.baidu.com") ;设置主页 
;(require 'mime-w3m) 
;设置显示图片
(setq w3m-default-display-inline-images t)
(setq w3m-default-toggle-inline-images t)
(setq w3m-search-default-engine "yahoo")
;;设置默认搜索引擎
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



;; 调用 stardict 的命令行程序 sdcv 来查辞典
;; 安装: sudo apt-get install stardict
;; sudo apt-get install sdcv
;;
;; 如果选中了 region 就查询 region 的内容，否则查询当前光标所在的单词
;; 查询结果在一个叫做 *sdcv* 的 buffer 里面显示出来，在这个 buffer 里面
;; 按 q 可以把这个 buffer 放到 buffer 列表末尾，按 d 可以查询单词
;; 注意自己编写.el的时候必须加上开头和结尾
(require 'cl)
(defun view-stardict-in-buffer ()
(interactive)
(let ((word (if mark-active
(buffer-substring-no-properties (region-beginning) (region-end))
(current-word nil t))))
(setq word (read-string (format "Search the dictionary for (default %s): " word) nil nil word))
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
(local-set-key (kbd "d") 'view-stardict-in-buffer)
(local-set-key (kbd "q") (lambda ()
(interactive)
(bury-buffer)
(unless (null (cdr (window-list))) ; only one window
(delete-window)))))
(goto-char (point-min))))))))
(provide 'stardict)



(put 'dired-find-alternate-file 'disabled nil)

;;start stardict

(require 'stardict)
(global-set-key (kbd "C-c-d") 'view-stardict-in-buffer)
