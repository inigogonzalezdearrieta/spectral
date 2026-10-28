;;; ...  -*- lexical-binding: t -*-
;;; spectral.el - spectroscopic unit conversion inside Emacs
;; Copyright (C) 2026 Inigo Gonzalez de Arrieta

;; Author: Inigo Gonzalez de Arrieta <inigo.gonzalezdearrieta@ehu.eus>
;; Maintainer: Inigo Gonzalez de Arrieta <inigo.gonzalezdearrieta@ehu.eus>
;; URL: https://github.com/inigogonzalezdearrieta/spectral
;; Version: 0.1
;; Package-Requires: ((emacs "30.2"))
;; Keywords: convenience, tools, science

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; See the README.md file for details.

;;; Code:

;; Relations between units (conversion factors).

(defconst thz-to-cm-1 33.356
  "THz to cm^-1 conversion factor."
  )
(defconst thz-to-ev 4.1357e-3
  "THz to eV conversion factor."
  )
(defconst ev-to-microns 1.2398
  "eV to micrometer conversion factor (inversely proportional relationship)."
  )
(defconst ev-to-k 11605
  "eV to Kelvin conversion factor."
  )

;; Relations between units (functions).
;; TO-DO: interactivity.

(defun thz-to-cm-1 (thz-input)
  "Takes data in THz and converts it to cm-1."
  (interactive (list (read-number "Frequency (THz): ")))
  (let ((result (* thz-to-cm-1 thz-input)))
    (when (called-interactively-p 'interactive)
      (message "%g cm^-1" result))
    result)
  )
(defun thz-to-ev (thz-input)
  "Takes data in THz and converts it to eV."
  (interactive)
  (* thz-to-ev thz-input)
  )
(defun ev-to-microns (ev-input)
  "Takes data in eV and converts it to microns (inversely proportional)."
  (* ev-to-microns ev-input)
  )
(defun ev-to-thz (thz-input)
  "Inverts the thz-to-ev function."
  (/ 1.0 (thz-to-ev thz-input)
  )
(defun ev-to-fs (ev-input)
  "Takes data in eV and converts it to fs."
  )

(provide 'spectral)
