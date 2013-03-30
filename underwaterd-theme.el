;;; underwaterd-theme.el --- A gentle, deep blue color theme

;; Copyright (C) 2012 Jon-Michael Deldin
;; Author: Jon-Michael Deldin <dev@jmdeldin.com>
;; Keywords: faces
;; Compatibility: 24.1
;; Version: 1.0.0

;; Modified by Rikard Glans (rikard@ecx.se)
;; Time-stamp: <2013-03-31 00:20:25>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This is an Emacs 24 port of underwater-mod.vim by Mario Gutierrez
;; from URL `http://www.vim.org/scripts/script.php?script_id=3132'.
;;
;; To use this theme, download it to ~/.emacs.d/themes. In your `.emacs'
;; or `init.el', add this line:
;;
;;   (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;;
;; Once you have reloaded your configuration (`eval-buffer'), do `M-x
;; load-theme' and select "underwater".

;;; Code:

(deftheme underwaterd "Port of underwater Vim theme")

(let ((*background-color*   "#102235")
      (*brown*              "#E64")
      (*comments*           "#4E6F91")
      (*constant*           "#FFC287")
      (*current-line*       "#18374f")
      (*cursor-block*       "#FFFFFF")
      (*cursor-underscore*  "#FFFAAA")
      (*fringe*             "#0A1721")
      (*keywords*           "#8AC6F2")
      (*light-purple*       "#FFCCFF")
      (*line-number*        "#2F577C")
      (*method-declaration* "#AF81F4")
      (*mode-line-bg*       "#0A1721")
      (*mode-line-fg*       "#8EAFD1")
      (*mode-line-inactive* "#4E6F91")
      (*normal*             "#DFEFF6")
      (*number*             "#96DEFA")
      (*operators*          "#3E71A1")
      (*parens*             "magenta")
      (*red*                "#C62626")
      (*red-light*          "#FFB6B0")
      (*regexp*             "#EF7760")
      (*regexp-alternate*   "#FF0")
      (*regexp-alternate-2* "#B18A3D")
      (*search-fg*          "#E2DAEF")
      (*search-bg*          "#AF81F4")
      (*string*             "#89E14B")
      (*type*               "#5BA0EB")
      (*variable*           "#8AC6F2")
      (*vertical-border*    "#051321")
      (*visual-selection*   "#262D51")

      (*powerline-active-1*      "#8EAFD1")
      (*powerline-active-1-bg*   "#1A2731")
      (*powerline-active-2*      "#8EAFD1")
      (*powerline-active-2-bg*   "#2A3741")
      (*powerline-inactive-1*    "#4E6F91")
      (*powerline-inactive-1-bg* "#0A1721")
      (*powerline-inactive-2*    "#4E6F91")
      (*powerline-inactive-2-bg* "#0A1721")

      ;;;; Rainbow delimiters
      (*rdd-1*                   "#8AC6F2")
      (*rdd-2*                   "#7EB8E3")
      (*rdd-3*                   "#73AAD4")
      (*rdd-4*                   "#679CC5")
      (*rdd-5*                   "#5C8EB7")
      (*rdd-6*                   "#5180A8")
      (*rdd-7*                   "#457299")
      (*rdd-8*                   "#3A648A")
      (*rdd-9*                   "#2F577C")

      (*flymake-info*            "#2F577C")
      (*flymake-warn*            "#0F376C")
      )

  (custom-theme-set-faces
   'underwaterd

   `(bold ((t (:bold t))))
   `(button ((t (:foreground, *keywords* :underline t))))
   `(default ((t (:background, *background-color* :foreground, *normal*))))
   `(highlight ((t (:background, *current-line*))))
   `(highlight-face ((t (:background, *current-line*))))
   `(hl-line ((t (:background, *current-line* :underline t))))
   `(info-xref ((t (:foreground, *keywords* :underline t))))
   `(region ((t (:background, *visual-selection*))))
   `(underline ((nil (:underline t))))

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground, *operators*))))
   `(font-lock-comment-delimiter-face ((t (:foreground, *comments*))))
   `(font-lock-comment-face ((t (:foreground, *comments*))))
   `(font-lock-constant-face ((t (:foreground, *constant*))))
   `(font-lock-doc-face ((t (:foreground, *string*))))
   `(font-lock-doc-string-face ((t (:foreground, *string*))))
   `(font-lock-function-name-face ((t (:foreground, *method-declaration*))))
   `(font-lock-keyword-face ((t (:foreground, *keywords*))))
   `(font-lock-negation-char-face ((t (:foreground, *red*))))
   `(font-lock-preprocessor-face ((t (:foreground, *keywords*))))
   `(font-lock-reference-face ((t (:foreground, *constant*))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground, *regexp*))))
   `(font-lock-regexp-grouping-construct ((t (:foreground, *regexp*))))
   `(font-lock-string-face ((t (:italic t :foreground, *string*))))
   `(font-lock-type-face ((t (:foreground, *type*))))
   `(font-lock-variable-name-face ((t (:foreground, *variable*))))
   `(font-lock-warning-face ((t (:foreground, *red*))))

   ;; GUI
   `(fringe ((t (:foreground, *normal* :background, *fringe*))))
   `(header-line ((t (:background, *fringe* :foreground, *normal*)))) ;; info header
   `(linum ((t (:foreground, *line-number* :background, *vertical-border*))))
   `(minibuffer-prompt ((t (:foreground, *variable*))))
   `(mode-line ((t (:background, *mode-line-bg* :foreground, *mode-line-fg*))))
   `(mode-line-inactive ((t (:background, *mode-line-bg* :foreground, *mode-line-inactive*))))
   `(text-cursor ((t (:background, *cursor-underscore*))))
   `(vertical-border ((t (:foreground, *vertical-border*)))) ;; between splits

   ;; powerline
   `(powerline-active1 ((t (:foreground ,*powerline-active-1* :background ,*powerline-active-1-bg* :inherit mode-line))))
   `(powerline-active2 ((t (:foreground ,*powerline-active-2* :background ,*powerline-active-2-bg* :inherit mode-line))))
   `(powerline-inactive1 ((t (:foreground ,*powerline-inactive-1* :background ,*powerline-inactive-1-bg* :inherit mode-line))))
   `(powerline-inactive2 ((t (:foreground ,*powerline-inactive-2* :background ,*powerline-inactive-2-bg* :inherit mode-line))))

   ;; show-paren
   `(show-paren-mismatch ((t (:background, *red* :foreground, *normal* :weight bold))))
   `(show-paren-match ((t (:background, *background-color* :foreground, *parens* :weight bold))))

   ;; search
   `(isearch ((t (:background, *search-bg* :foreground, *search-fg*))))
   `(isearch-fail ((t (:background, *red*))))
   `(lazy-highlight ((t (:background, *operators* :foreground, *search-fg*))))

   ;; erb/rhtml-mode
   `(erb-out-delim-face ((t (:foreground, *regexp*))))

   ;; magit
   `(magit-diff-add ((t (:foreground, *string*))))
   `(magit-diff-del ((t (:foreground, *red*))))

   ;; org-mode
   `(org-date ((t (:foreground, *light-purple* :underline t))))
   `(org-level-1 ((t (:foreground, *string*))))
   `(org-special-keyword ((t (:foreground, *variable*))))
   `(org-link ((t (:foreground, *keywords* :underline t))))
   `(org-checkbox ((t (:foreground, *keywords* :background, *background-color* :bold t))))
   `(org-clock-overlay ((t (:foreground, *mode-line-bg* :background, *string*))))

   ;; which-func
   `(which-func ((t (:foreground, *normal*))))

   ;; Flymake
   `(flymake-errline  ((t (:background ,*red*))))
   `(flymake-infoline ((t (:background ,*flymake-info*))))
   `(flymake-warnline ((t (:background ,*flymake-warn*))))

   ;; rainbow delimiters mode
   `(rainbow-delimiters-depth-1-face  ((t (:foreground ,*rdd-1*))))
   `(rainbow-delimiters-depth-2-face  ((t (:foreground ,*rdd-2*))))
   `(rainbow-delimiters-depth-3-face  ((t (:foreground ,*rdd-3*))))
   `(rainbow-delimiters-depth-4-face  ((t (:foreground ,*rdd-4*))))
   `(rainbow-delimiters-depth-5-face  ((t (:foreground ,*rdd-5*))))
   `(rainbow-delimiters-depth-6-face  ((t (:foreground ,*rdd-6*))))
   `(rainbow-delimiters-depth-7-face  ((t (:foreground ,*rdd-7*))))
   `(rainbow-delimiters-depth-8-face  ((t (:foreground ,*rdd-8*))))
   `(rainbow-delimiters-depth-9-face  ((t (:foreground ,*rdd-9*))))

   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; Local Variables:
;; no-byte-compile: t
;; End:

(provide-theme 'underwaterd)
;;; underwaterd-theme.el ends here
