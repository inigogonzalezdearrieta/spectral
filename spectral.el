;;; ...  -*- lexical-binding: t -*-
;;; spectral.el - spectroscopic unit conversion inside Emacs
;; Inigo Gonzalez de Arrieta

;; Relations between units (conversion factors).

(defvar thz-to-cm-1 33.356
  "THz to cm^-1 conversion factor."
  )
(defvar thz-to-ev 4.1357e-3
  "THz to eV conversion factor."
  )
(defvar ev-to-microns 1.2398
  "eV to micrometer conversion factor."
  ) ; Careful: this relation is inverse.
(defvar ev-to-k 11605
  "eV to Kelvin conversion factor."
  )

;; Relations between units (functions).
;; TO-DO: interactivity.

(defun thz-to-cm-1 (thz-input)
  "Takes data in THz and converts it to cm-1."
  (* thz-to-cm-1 thz-input)
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

; For testing:
;(thz-to-cm-1 10)
;(thz-to-ev 790)
