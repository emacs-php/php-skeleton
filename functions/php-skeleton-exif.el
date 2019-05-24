;;; php-skeleton-exif.el --- Skeleton template for PHP Exif functions

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

;; Exif functions
;; https://php.net/manual/en/ref.exif.php
;; file:///usr/share/doc/php-doc/html/ref.exif.html

;;; Code:
(define-skeleton php-exif_imagetype
  "Insert an exif_imagetype statement. Determine the type of an image"
  > "exif_imagetype(" (skeleton-read "Filename? ") ");")

(define-skeleton php-exif_read_data
  "Insert an exif_read_data. Reads the EXIF headers from JPEG or TIFF"
  ""
  '(setq filename (skeleton-read "Filename? "))
  '(setq sections (skeleton-read "Sections? "))
  '(setq arrays (skeleton-read "Arrays (TRUE | FALSE)? "))
  '(setq thumbnail (skeleton-read "Thumbnail (TRUE | FALSE)? "))
  > "exif_read_data(" filename ", " sections ", " arrays ", " thumbnail ");" \n)

(define-skeleton php-exif_tagname
  "Insert an exif_tagname. Get the header name for an index"
  ""
  '(setq index (skeleton-read "Index? "))
  > "exif_tagname(" index ");" \n)

(define-skeleton php-exif_thumbnail
  "Insert an exif_thumbnail. Retrieve the embedded thumbnail of a TIFF or JPEG image"
  ""
  '(setq filename (skeleton-read "Filename? "))
  '(setq width (skeleton-read "Width? "))
  '(setq height (skeleton-read "Height? "))
  '(setq imagetype (skeleton-read "Image type? "))
  > "exif_thumbnail(" filename ", " width ", " height ", " imagetype ");" \n)

(provide 'php-skeleton-exif)
;;; php-skeleton-exif.el ends here
