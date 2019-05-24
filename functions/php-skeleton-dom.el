;;; php-skeleton-dom.el --- Skeleton template for PHP DOM functions

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

;; DOM (Document Object Model) is to manage dom objects
;; http://php.net/manual/en/book.dom.php
;; More see file:///usr/share/doc/php-doc/html/book.dom.html

;;; Code:

(define-skeleton php-domdocument
  "Insert a new domdocument object"
  ""
  > "$" (skeleton-read "Var? ") " = DOMDocument('1.0');" \n)

(define-skeleton php-dom-appendChild
  "Insert a new appendChild dom method"
  ""
  >  (skeleton-read "Dom variable? ") "->appendChild(" (skeleton-read "Child? ") ");" \n)

(define-skeleton php-dom-createElement
  "Insert a new appendChild dom method"
  ""
  >  (skeleton-read "Dom variable? ") "->createElement(" (skeleton-read "Element? ") ");" \n)

(define-skeleton php-dom-createTextNode
  "Insert a new appendChild dom method"
  ""
  >  (skeleton-read "Dom variable? ") "->createTextNode(" (skeleton-read "Text Node? ") ");" \n)

(define-skeleton php-dom-setAttribute
  "Insert a new appendChild dom method"
  ""
  >  (skeleton-read "Dom variable? ") "->setAttribute(" (skeleton-read "Attribute? ") ", " (skeleton-read "Value? ") ");" \n)

(define-skeleton php-dom-saveXML
  "Insert a new appendChild dom method"
  ""
  >  (skeleton-read "Dom variable? ") "->saveXML();" \n)

(provide 'php-skeleton-dom)
;;; php-skeleton-dom.el ends here
