;;; php-skeleton-xmlreader.el --- Skeleton template for PHP XML Reader functions

;; Copyright (C) 2019  Friends of Emacs-PHP development
;; Copyright (C) 2015  David Arroyo Menéndez

;; Author: David Arroyo Menéndez <davidam@gnu.org>
;; Maintainer: USAMI Kenta <tadsan@zonu.me>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; XML Reader
;; More see file:///usr/share/doc/php-doc/html/book.xmlreader.html
;; http://php.net/manual/en/class.xmlreader.php

;;; Code:
(define-skeleton php-xmlreader
  "Insert a new xmlreader object"
  ""
  > "$" (skeleton-read "Var? ") " = new XMLReader();" \n)

(define-skeleton php-xmlreader-open
  "Insert a new xmlreader object"
  ""
  > (skeleton-read "Var? ") "->open(" (skeleton-read "File? ") ")" \n)

(provide 'php-skeleton-xmlreader)
;;; php-skeleton-xmlreader.el ends here
