;;; php-skeleton.el --- Skeleton template for PHP language strucures

;; Copyright (C) 2019  Friends of Emacs-PHP development
;; Copyright (C) 2015  David Arroyo Menéndez

;; Author: David Arroyo Menéndez <davidam@gnu.org>
;; Maintainer: USAMI Kenta <tadsan@zonu.me>
;; Version: 0.0.1
;; Keywords: languages, php
;; URL: https://github.com/emacs-php/php-skeleton
;; Package-Requires: ((emacs "24.3"))
;; License: GPL-3.0-or-later

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

;; php-skeleton is some skeleton templates.

;; Control Structure functions
;; http://php.net/manual/en/language.control-structures.php
;; file:///usr/share/doc/php-doc/html/language.control-structures.html

;;; Code:
(define-skeleton php-if
  "Insert a if statement"
  ""
  '(setq condition (skeleton-read "Condition? ")) \n
  > "if (" condition ") {" \n
  > _ \n
  ( "other condition, %s: "
    > -2 "}"
    > " elseif (" str ") {" \n
    > \n
    > _ )
  > -2 "}"
  > " else {" \n
  > _ \n
  resume:
  "}" \n)

(define-skeleton php-foreach
  "Insert a foreach statement."
  ""
  '(setq value (skeleton-read "Value variable? ")) \n
  '(setq array (skeleton-read "Array? ")) \n
  > "foreach (" array " as " value ") {" \n
  > _ \n
  > -2 "}" \n)

(define-skeleton php-for
  "Insert a for statement."
  ""
  '(setq index (skeleton-read "Index variable? ")) \n
  '(setq condition (skeleton-read "Condition? ")) \n
  > "for (" condition "; " index "++) {" \n
  > _ \n
  > -2 "}" \n)

(define-skeleton php-switch
  "Insert a switch statement."
  ""
  '(setq index (skeleton-read "Index variable? ")) \n
  "switch (" index ") {" \n
  ( "Some case? %s: "
    > "case " str ":" \n
    > _ \n
    > -2 "break;" \n
    )
  "}")

(define-skeleton php-switch-case
  "Insert a switch statement."
  ""
  ( "Some case? %s: "
    > "case " str ":" \n
    > _ \n
    > -2 "break;" \n
    ))

(define-skeleton php-include
  "Insert a include statement."
  ""
  '(setq file (skeleton-read "File? ")) \n
  > "include_once '" file "';")

(define-skeleton php-include_once
  "Insert a include_once statement."
  ""
  '(setq file (skeleton-read "File? ")) \n
  > "include_once '" file "';")

(define-skeleton php-return
  "Insert a return statement."
  ""
  > "return " _ ";")

(define-skeleton php-require
  "Insert a require statement."
  ""
  '(setq file (skeleton-read "File? ")) \n
  > "require '" file "';")

(define-skeleton php-require_once
  "Insert a require_once statement."
  ""
  '(setq file (skeleton-read "File? ")) \n
  > "require_once '" file "';")

(define-skeleton php-goto
  "Insert a goto statement."
  ""
  '(setq index (skeleton-read "Index variable? ")) \n
  > "goto " index ";" \n
  > _ \n
  > index ":" \n
  > _ \n)

(define-skeleton php-function
  "Insert a function statement."
  ""
  '(setq function (skeleton-read "Function name? ")) \n
  '(setq argument (skeleton-read "Argument? ")) \n
  > "function " function "(" argument
  ( "Another argument? %s: "
    > ", " str )
  > ") {" \n
  _ \n
  > "}")

(define-skeleton php-define
  "Insert a define statement"
  ""
  '(setq variable (skeleton-read "Variable? "))
  '(setq value (skeleton-read "Value? "))
  "define(\"" variable "\",\"" value "\");")

(provide 'php-skeleton)
;;; php-skeleton.el ends here
