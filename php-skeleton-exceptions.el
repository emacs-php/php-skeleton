;;; php-skeleton-exceptions.el --- Skeleton template for PHP DOM functions

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

;; Exceptions
;; http://php.net/manual/en/language.exceptions.php
;; file:///usr/share/doc/php-doc/html/language.exceptions.html

;;; Code:
(define-skeleton php-try-catch
  "Insert a try catch statement"
  ""
  > "try {" \n
  _ \n
  > "} catch (" (skeleton-read "Exception? ") ") {" \n
  _ \n
  > "}" \n)

(define-skeleton php-try-catch-finally
  "Insert a try catch statement"
  ""
  > "try {" \n
  _ \n
  > "} catch (" (skeleton-read "Exception? ") ") {" \n
  _ \n
  > "} finally {" \n
  _ \n
  > "}" \n)

(provide 'php-skeleton-exceptions)
;;; php-skeleton-exceptions.el ends here
