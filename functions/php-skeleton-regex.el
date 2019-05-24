;;; php-skeleton-regex.el --- Skeleton template for PHP Regular expression functions

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

;; Regular expression
;; http://php.net/manual/en/ref.regex.php
;; file:///usr/share/doc/php-doc/html/ref.regex.html

;;; Code:
(define-skeleton php-ereg
  "Insert an ereg statement"
  ""
  '(setq regexp (skeleton-read "Regexp? "))
  '(setq string (skeleton-read "String? "))
  > "ereg(" regexp ", " string ");"
)

(define-skeleton php-ereg_replace
  "Insert an eregi_replace statement"
  ""
  '(setq pattern (skeleton-read "Pattern? "))
  '(setq replacement (skeleton-read "Replacement? "))
  '(setq string (skeleton-read "String? "))
  > "ereg_replace(" pattern ", " replacement ", " string ");"
)

(define-skeleton php-eregi
  "Insert an eregi statement"
  ""
  '(setq regexp (skeleton-read "Regexp? "))
  '(setq string (skeleton-read "String? "))
  > "ereg(" regexp ", " string ");"
)

(define-skeleton php-eregi_replace
  "Insert an eregi_replace statement"
  ""
  '(setq pattern (skeleton-read "Pattern? "))
  '(setq replacement (skeleton-read "Replacement? "))
  '(setq string (skeleton-read "String? "))
  > "eregi_replace(" pattern ", " replacement ", " string ");"
)

(define-skeleton php-split
  "Insert a split statement"
  ""
  '(setq pattern (skeleton-read "Pattern: "))
  '(setq string (skeleton-read "String: "))
  '(setq limit (skeleton-read "Limit: "))
  > "split(" pattern ", " string ", " limit ");" \n
)

(define-skeleton php-spliti
  "Insert a split statement"
  ""
  '(setq pattern (skeleton-read "Pattern: "))
  '(setq string (skeleton-read "String: "))
  '(setq limit (skeleton-read "Limit: "))
  > "spliti(" pattern ", " string ", " limit ");" \n
)

(define-skeleton php-sql_regcase
  "Insert a DEPRECATED sql_regcase statement. Creates a regular expression for a case insensitive match"
  ""
  '(setq string (skeleton-read "String: "))
  > "sql_regcase(" string ");" \n
)

(provide 'php-skeleton-regex)
;;; php-skeleton-regex.el ends here
