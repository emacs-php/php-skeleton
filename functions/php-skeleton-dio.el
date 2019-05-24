;;; php-skeleton-dio.el --- Skeleton template for PHP Direct IO functions

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

;; Direct IO Functions
;; https://php.net/manual/en/ref.dio.php
;; file:///usr/share/doc/php-doc/html/ref.dio.html

;;; Code:
(define-skeleton php-dio_close
  "Insert a dio_close statement"
  ""
  '(setq fd (skeleton-read "File Descriptor: "))
  > "dio_close(" fd ");" \n)

(define-skeleton php-dio_fcntl
  "Insert a dio_fcntl statement"
  ""
  '(setq fd (skeleton-read "File Descriptor: "))
  '(setq cmd (skeleton-read "Command: (F_SETLK | F_SETLKW | F_GETLK | F_DUPFD | F_SETFL ) "))

  '(setq args (skeleton-read "Args: (start | length | whence | type ) "))
  > "dio_fcntl(" fd ", " cmd ", " args ");" \n)

(define-skeleton php-dio_open
  "Insert a dio_open statement"
  ""
  '(setq filename (skeleton-read "Filename: "))
  '(setq flags (skeleton-read "Flags: "))
  '(setq mode (skeleton-read "Mode: "))
  > "dio_open(" filename ", " flags ", " mode ");" \n)

(define-skeleton php-dio_read
  "Insert a dio_read statement"
  ""
  '(setq fd (skeleton-read "File Descriptor: "))
  '(setq length (skeleton-read "Length: "))
  > "dio_read(" fd ", " length ");" \n)

(define-skeleton php-dio_seek
  "Insert a dio_seek statement"
  ""
  '(setq fd (skeleton-read "File Descriptor: "))
  '(setq pos (skeleton-read "Position: "))
  '(setq whence (skeleton-read "Specifies how the position pos should be interpreted (SEEK_SET | SEEK_CUR | SEEK_END): "))
  > "dio_seek(" fd ", " pos ", " whence ");" \n)

(define-skeleton php-dio_stat
  "Insert a dio_read statement"
  ""
  '(setq fd (skeleton-read "File Descriptor: "))
  > "dio_stat(" fd ");" \n)

(define-skeleton php-dio_tcsetattr
  "Insert a dio_tcsetattr statement"
  ""
  '(setq fd (skeleton-read "File Descriptor: "))
  '(setq options (skeleton-read "Options: "))
  > "dio_tcsetattr(" fd ", " options ");" \n)

(define-skeleton php-dio_truncate
  "Insert a dio_truncate statement"
  ""
  '(setq fd (skeleton-read "File Descriptor: "))
  '(setq offset (skeleton-read "Offset: "))
  > "dio_truncate(" fd ", " offset ");" \n)

(define-skeleton php-dio_write
  "Insert a dio_write statement"
  ""
  '(setq fd (skeleton-read "File Descriptor: "))
  '(setq data (skeleton-read "Data: "))
  '(setq len (skeleton-read "Length: "))
  > "dio_write(" fd ", " data ", " len ");" \n)

(provide 'php-skeleton-dio)
;;; php-skeleton-dio.el ends here
