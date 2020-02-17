(deftheme tangotango
  "Created 2020-01-25.")

(custom-theme-set-faces
 'tangotango
 '(cursor ((t (:foreground "#222222" :background "#fce94f"))))
 '(fixed-pitch ((t (:inherit (default)))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(highlight ((t (:background "brown4"))))
 '(region ((t (:background "dark slate blue"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 16) (background light)) (:background "yellow")) (((class color) (min-colors 16) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 8)) (:foreground "black" :background "cyan")) (t (:inverse-video t))))
 '(trailing-whitespace ((((class color) (background light)) (:background "red1")) (((class color) (background dark)) (:background "red1")) (t (:inverse-video t))))
 '(font-lock-builtin-face ((t (:foreground "#729fcf"))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:foreground "#888a85"))))
 '(font-lock-constant-face ((t (:foreground "#8ae234"))))
 '(font-lock-doc-face ((t (:foreground "#888a85"))))
 '(font-lock-function-name-face ((t (:weight bold :foreground "#edd400"))))
 '(font-lock-keyword-face ((t (:weight bold :foreground "#729fcf"))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:slant italic :foreground "#ad7fa8"))))
 '(font-lock-type-face ((t (:weight bold :foreground "#8ae234"))))
 '(font-lock-variable-name-face ((t (:foreground "tomato"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "#f57900"))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:foreground "dodger blue" :underline (:color foreground-color :style line)))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(fringe ((t (:background "#2e3434"))))
 '(header-line ((default (:inherit (mode-line))) (((type tty)) (:underline (:color foreground-color :style line) :inverse-video nil)) (((class color grayscale) (background light)) (:box nil :foreground "grey20" :background "grey90")) (((class color grayscale) (background dark)) (:box nil :foreground "grey90" :background "grey20")) (((class mono) (background light)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "black" :background "white")) (((class mono) (background dark)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "white" :background "black"))))
 '(tooltip ((t (:background "lightyellow" :foreground "black" :inherit (quote variable-pitch)))))
 '(mode-line ((t (:box (:line-width 1 :color nil :style released-button) :background "#222222" :foreground "#bbbbbc"))))
 '(mode-line-buffer-id ((t (:weight bold :foreground "orange"))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:background "#555753" :foreground "#bbbbbc"))))
 '(isearch ((t (:foreground "#2e3436" :background "#f57900"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((t (:foreground "#2e3436" :background "#e9b96e"))))
 '(match ((t (:weight bold :foreground "#2e3436" :background "#e9b96e"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(info-xref ((t (:foreground "#729fcf"))))
 '(info-xref-visited ((t (:foreground "#ad7fa8"))))
 '(widget-button ((t (:bold t))))
 '(widget-field ((t (:foreground "orange" :background "gray30"))))
 '(widget-single-line-field ((t (:foreground "orange" :background "gray30"))))
 '(custom-group-tag ((t (:bold t :foreground "#edd400" :height 1.3))))
 '(custom-variable-tag ((t (:bold t :foreground "#edd400" :height 1.1))))
 '(custom-face-tag ((t (:bold t :foreground "#edd400" :height 1.1))))
 '(custom-button ((t (:box (:line-width 1 :style released-button) :background "grey50" :foreground "black"))))
 '(custom-variable-button ((t (:inherit (quote custom-button)))))
 '(custom-button-mouse ((t (:inherit (quote custom-button) :background "grey60"))))
 '(custom-button-unraised ((t (:background "grey50" :foreground "black"))))
 '(custom-button-pressed ((t (:inherit (quote custom-button) :box (:style pressed-button)))))
 '(custom-documentation ((t (:italic t))))
 '(message-cited-text ((t (:foreground "#edd400"))))
 '(gnus-group-mail-1-empty ((t (:foreground "light cyan"))))
 '(gnus-group-mail-1 ((t (:bold t :foreground "light cyan"))))
 '(gnus-group-mail-2-empty ((t (:foreground "turquoise"))))
 '(gnus-group-mail-2 ((t (:bold t :foreground "turquoise"))))
 '(gnus-group-mail-3-empty ((t (:foreground "#729fcf"))))
 '(gnus-group-mail-3 ((t (:bold t :foreground "#edd400"))))
 '(gnus-group-mail-low-empty ((t (:foreground "dodger blue"))))
 '(gnus-group-mail-low ((t (:bold t :foreground "dodger blue"))))
 '(gnus-group-news-1-empty ((t (:foreground "light cyan"))))
 '(gnus-group-news-1 ((t (:bold t :foreground "light cyan"))))
 '(gnus-group-news-2-empty ((t (:foreground "turquoise"))))
 '(gnus-group-news-2 ((t (:bold t :foreground "turquoise"))))
 '(gnus-group-news-3-empty ((t (:foreground "#729fcf"))))
 '(gnus-group-news-3 ((t (:bold t :foreground "#edd400"))))
 '(gnus-group-news-low-empty ((t (:foreground "dodger blue"))))
 '(gnus-group-news-low ((t (:bold t :foreground "dodger blue"))))
 '(gnus-summary-cancelled ((t (:background "black" :foreground "yellow"))))
 '(gnus-summary-high-ancient ((t (:bold t :foreground "royal blue"))))
 '(gnus-summary-high-read ((t (:bold t :foreground "lime green"))))
 '(gnus-summary-high-ticked ((t (:bold t :foreground "tomato"))))
 '(gnus-summary-high-unread ((t (:bold t :foreground "white"))))
 '(gnus-summary-low-ancient ((t (:italic t :foreground "lime green"))))
 '(gnus-summary-low-read ((t (:italic t :foreground "royal blue"))))
 '(gnus-summary-low-ticked ((t (:italic t :foreground "dark red"))))
 '(gnus-summary-low-unread ((t (:italic t :foreground "white"))))
 '(gnus-summary-normal-ancient ((t (:foreground "royal blue"))))
 '(gnus-summary-normal-read ((t (:foreground "lime green"))))
 '(gnus-summary-normal-ticked ((t (:foreground "indian red"))))
 '(gnus-summary-normal-unread ((t (:foreground "white"))))
 '(gnus-summary-selected ((t (:background "brown4" :foreground "white"))))
 '(message-header-name ((t (:foreground "tomato"))))
 '(message-header-newsgroups ((t (:italic t :bold t :foreground "LightSkyBlue3"))))
 '(message-header-other ((t (:foreground "LightSkyBlue3"))))
 '(message-header-xheader ((t (:foreground "DodgerBlue3"))))
 '(message-header-subject ((t (:foreground "white"))))
 '(message-header-to ((t (:foreground "white"))))
 '(message-header-cc ((t (:foreground "white"))))
 '(org-hide ((t (:foreground "#2e3436"))))
 '(org-level-1 ((t (:bold t :foreground "dodger blue" :height 1.5))))
 '(org-level-2 ((t (:bold t :foreground "#edd400" :height 1.2))))
 '(org-level-3 ((t (:bold t :foreground "#6ac214" :height 1.0))))
 '(org-level-4 ((t (:bold nil :foreground "tomato" :height 1.0))))
 '(org-date ((t (:underline t :foreground "magenta3"))))
 '(org-footnote ((t (:underline t :foreground "magenta3"))))
 '(org-link ((t (:foreground "skyblue2" :background "#2e3436" :underline nil))))
 '(org-special-keyword ((t (:foreground "brown"))))
 '(org-verbatim ((t (:foreground "#eeeeec" :underline t :slant italic))))
 '(org-block ((t (:foreground "#bbbbbc"))))
 '(org-quote ((t (:inherit org-block :slant italic))))
 '(org-verse ((t (:inherit org-block :slant italic))))
 '(org-todo ((t (:bold t :foreground "Red"))))
 '(org-done ((t (:bold t :foreground "ForestGreen"))))
 '(org-agenda-structure ((t (:weight bold :foreground "tomato"))))
 '(org-agenda-date ((t (:foreground "#6ac214"))))
 '(org-agenda-date-weekend ((t (:weight normal :foreground "dodger blue"))))
 '(org-agenda-date-today ((t (:weight bold :foreground "#edd400"))))
 '(org-scheduled-previously ((t (:weight normal :foreground "#edd400"))))
 '(org-block-begin-line ((t (:foreground "#888a85" :background "#252b2b"))))
 '(org-block-end-line ((t (:foreground "#888a85" :background "#252b2b"))))
 '(diff-header ((t (:background "gray30"))))
 '(diff-index ((t (:foreground "#edd400" :bold t))))
 '(diff-file-header ((t (:foreground "#eeeeec" :bold t))))
 '(diff-hunk-header ((t (:foreground "#edd400"))))
 '(diff-added ((t (:foreground "#8ae234"))))
 '(diff-removed ((t (:foreground "#f57900"))))
 '(diff-context ((t (:foreground "#888a85"))))
 '(minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
 '(font-lock-negation-char-face ((t (:foreground "#6ac214"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#edd400"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#888a85"))))
 '(default ((t (:weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#eeeeec" :background "#2e3434" :stipple nil :inherit nil)))))

(provide-theme 'tangotango)
