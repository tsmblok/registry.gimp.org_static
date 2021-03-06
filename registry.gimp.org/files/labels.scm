; labeltemplates.scm: Templates for labels.scm.
; Copyright (C) 2005,2006,2007 by Akkana Peck, akkana@shallowsky.com.
; 
; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.
; 
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
; 
; You should have received a copy of the GNU General Public License
; along with this program; if not, write to the Free Software
; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; LABEL TEMPLATES
;; Eventually these should move to a separate, auto-generated file.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Rectangular labels: (name comment (w h) (nx ny x0 y0 dx dy))
(define label-templates-rectangular
  '(

;; File: /usr/share/glabels/templates/misc-us-templates.xml
    ( "Tough-Tags TTLW-2016" "Microtube labels" ( 92.16 36 ) (5 17 68 4.17 100.8 45.3))
    ( "Netc 749303-70001 " "DLT Labels" ( 162 59.4 ) (3 10 36 45 189 72))
    ( "Neato Slimline CD Case, spine" "Slimline CD Case (upside down)" ( 394.5 342.5 ) (1 2 96.5 41.9 0 363))
    ( "Neato Slimline CD Case" "Slimline CD Case (rightside up)" ( 394.5 342.5 ) (1 2 130 41.9 0 363))
    ( "Stomper PRO Spine" "PRO CD Labels 2-up (CD spine only)" ( 288 20 ) (2 1 18 385 288 0))
    ( "Stomper PRO Zip" "PRO CD Labels 2-up (Face only)" ( 168 142 ) (1 2 407 68 0 142))
    ( "Neato USCD2lbl Rectangles" "CD Template Rectangles" ( 77.04 234.36 ) (2 1 51.3 279.72 433.44 0))
    ( "Southworth BC" "Business Cards" ( 252 144 ) (2 5 36 36 288 144))

;; File: /usr/share/glabels/templates/avery-us-templates.xml
    ( "Avery LSK-3.5" "" ( 3.13in 0.5in ) (1 20 0.5in 0.5in 4.38in 0.5in))
    ( "Avery LSK-3" "" ( 3.13in 0.5in ) (2 20 0.5in 0.5in 4.38in 0.5in))
    ( "Avery LSK-5.5" "" ( 1.75in 0.5in ) (2 20 0.5in 0.3in 2.05in 0.5in))
    ( "Avery LSK-5" "" ( 1.75in 0.5in ) (4 20 0.5in 0.3in 2.05in 0.5in))
    ( "Avery LSK-8.5" "" ( 1.13in 0.5in ) (2 20 0.5in 0.5in 2.13in 0.5in))
    ( "Avery LSK-8" "" ( 1.13in 0.5in ) (4 20 0.5in 0.5in 2.13in 0.5in))
    ( "Avery  3274.1" "Square Labels" ( 180 180 ) (3 3 22.5 90 193.5 216))
    ( "Avery  8165" "Full Sheet Labels" ( 612 792 ) (1 1 0 0 0 0))
    ( "Avery  5997-Spine" "Video Tape Spine Labels" ( 414 48 ) (1 15 99 36 0 48))
    ( "Avery  5997-Face" "Video Tape Face Labels" ( 220 133 ) (2 5 80 60.5 236 133))
    ( "Avery  5395" "Name Badge Labels" ( 235 168 ) (2 4 53 42 272.5 180.5))
    ( "Avery  8373" "Business Cards" ( 252 144 ) (2 4 36 54 288 180))
    ( "Avery  5371" "Business Cards" ( 252 144 ) (2 5 54 36 252 144))
    ( "Avery  5366" "Filing Labels" ( 252 48 ) (2 15 36 36 288 48))
    ( "Avery  6490" "Diskette Labels" ( 193.5 144 ) (3 5 9.215999926 36 200.2679959 144))
    ( "Avery  5196" "Diskette Labels" ( 198 198 ) (3 3 9 36 198 216))
    ( "Avery  5167" "Return Address Labels" ( 126 36 ) (4 20 20.25 36 148.5 36))
    ( "Avery  5164" "Shipping Labels" ( 288 234 ) (2 3 13 36 301 234))
    ( "Avery  5163" "Shipping Labels" ( 288 144 ) (2 5 11.25 36 301.5 144))
    ( "Avery  6879" "Address Labels" ( 270 90 ) (2 6 27 81 288 108))
    ( "Avery  5162" "Address Labels" ( 288 96 ) (2 7 10.5 60 303 96))
    ( "Avery  5161" "Address Labels" ( 288 72 ) (2 10 11.5 36 303 72))
    ( "Avery  5160" "Address Labels" ( 189 72 ) (3 10 11.5 36 200 72))
    ) )

;; CD Labels: (name comment (radius hole) (nx ny x0 y0 dx dy))
(define label-templates-cd
  '(
    ("Avery 5931" "CD Labels, 2 per sheet" (166.5 58.5) (1 2 139.5 49.5 0 360))
    ) )

;; Paper sizes we recognize:
;; Note, this is currently somewhat bogus because the label templates are
;; specific to a particular paper size.
(define page-sizes
  '(
    ("a4" 595.276 841.89)
    ("us-letter" 612 792)
    ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; END LABEL TEMPLATES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; labels.scm: Make labels according to templates.
; Copyright (C) 2005 by Akkana Peck, akkana@shallowsky.com.
; Requires templates in labeltemplates.scm
; 
; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.
; 
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
; 
; You should have received a copy of the GNU General Public License
; along with this program; if not, write to the Free Software
; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

(define (find-label-template templatenum templatelist)
;  (nth templatenum templatelist) )
  (nth (- (length templatelist) templatenum 1) templatelist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Rectangular label routines
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Make a rectangular shape, in a solid color.
;;
(define (script-fu-make-rect width height color name)
  (let* ((old-fg-color (car (gimp-context-get-foreground)))
	 (img (car (gimp-image-new width height RGB)))
	 (labellayer (car (gimp-layer-new img width height
                                          RGBA-IMAGE name 100 NORMAL-MODE))))
    (gimp-image-undo-disable img)
    (gimp-image-add-layer img labellayer -1)
    (gimp-selection-all img)
    (gimp-edit-clear labellayer)

    (gimp-context-set-foreground color)
    (gimp-edit-bucket-fill labellayer
                           FG-BUCKET-FILL NORMAL-MODE 100 0 FALSE 0 0)

    ;; Clean up
    (gimp-image-set-filename img name)  ;; XXX should remove spaces
    (gimp-selection-none img)
    (gimp-image-set-active-layer img labellayer)
    (gimp-context-set-foreground old-fg-color)
    (gimp-image-undo-enable img)
    (gimp-display-new img)))

;;
;; Make a rectangle with the right aspect ratio for the specified template.
;;
(define (script-fu-rect-label templatenum width color)
  (let* ((templ (find-label-template templatenum label-templates-rectangular)))
    (if (not (null? templ))
        (let* ((w (car (car (cdr (cdr templ)))))
               (h (car (cdr (car (cdr (cdr templ))))))
               (name (car templ))
               )
          (script-fu-make-rect width (/ (* width h) w) color name))
        (gimp-message "Couldn't find that label template!")
        )))

;;
;; Make a rectangle with the right aspect ratio for the specified template,
;; populating it with the current label.
;;
(define (script-fu-rect-label-page img drawable
                                   templatenum from to trans fudge)
  (let* (
         (templ  (find-label-template templatenum label-templates-rectangular))
         (pgsize (find-label-template 0 page-sizes))
         )
     (if (not (null? templ))
         (let* (
                (temp-layer nil)
                (dims (car (cdr (cdr templ))))
                (imgwidth (car (gimp-image-width img)))
                (w (car dims))
                (h (car (cdr dims)))
                (scale (/ imgwidth w))
                (layouts (car (cdr (cdr (cdr templ)))))
                (nx (car layouts))
                (ny (nth 1 layouts))
                (x0 (* scale (nth 2 layouts)))
                (y0 (* scale (nth 3 layouts)))
                (dx (* scale (nth 4 layouts)))
                (dy (* scale (nth 5 layouts)))
                (pagew (* scale (nth 1 pgsize)))
                (pageh (* scale (nth 2 pgsize)))
                (name (string-append (car templ) " page"))

                ;; Make the new image
                (newimg (car (gimp-image-new pagew pageh RGB)))
                (baselayer (car (gimp-layer-new newimg pagew pageh
                                                (if (= trans TRUE) RGBA-IMAGE
                                                                   RGB-IMAGE)
                                                "background"
                                                100 NORMAL-MODE)))
                )

;           (gimp-message (string-append "Making label page of width "
;                                        (number->string w 10)))
;            (gimp-message
;             (string-append "w " (number->string w 10)
;                            ", h " (number->string h 10)
;                            ", nx " (number->string nx 10)
;                            ", ny " (number->string ny 10)
;                            ", x0 " (number->string x0 10)
;                            ", y0 " (number->string y0 10)
;                            ", dx " (number->string dx 10)
;                            ", dy " (number->string dy 10)))

           ; Set upper bound
           (if (= to 99)
               (set! to (* nx ny))
               (if (< to from) (set! to from)))

           (gimp-image-undo-disable newimg)
           (gimp-image-add-layer newimg baselayer -1)
           (gimp-edit-clear baselayer)

           ;; Copy the label
           (gimp-edit-copy-visible img)

           ;; Loop, pasting copies of the label into the new image.
           (let* ( (i 0) (j 0) (x x0) (y y0)
                   ;; Okay, this is totally cheatsie, looping over
                   ;; everything on the page and not just the ones
                   ;; between from and to.  Sheesh!
                   (num 1)
                 )
             (while (< j ny)
                    (set! i 0)
                    (set! x x0)
                    (while (< i nx)
                           (if (and (>= num from) (<= num to))
                               (let* ((floating-sel (car (gimp-edit-paste baselayer FALSE))))
                                 (gimp-layer-set-offsets floating-sel x y)
                                 ; Either anchor or make a new layer
                                 (gimp-floating-sel-anchor floating-sel)
                                 ;(gimp-floating-sel-to-layer floating-sel)
                                 ))
                           (set! num (+ num 1))
                           (set! i (+ i 1))
                           (set! x (+ x dx))
                           )
                    (set! j (+ j 1))
                    (set! y (+ y dy))
                    ;(set! y (+ y0 (* j dy)))
                    ))

           ;; Crop the resulting image according to the printer fudge factor.
           ;; Yes, I know it would be better to just apply it to begin with,
           ;; but it complicates the code.
           (let ((fudgew (* pagew fudge))
                 (fudgeh (* pageh fudge)))
             (gimp-image-crop newimg fudgew fudgeh
                              (/ (- pagew fudgew) 2) (/ (- pageh fudgeh) 2)))

           (gimp-image-set-filename newimg name)  ;; XXX should remove spaces

           ;; Clean up
           (gimp-selection-none img)
           (gimp-image-undo-enable newimg)
           (gimp-display-new newimg)
           )
         )
    ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CD label routines
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Utility to calculate the inner radius of a CD template
(define (cd-inner-diam diameter mini)
  (if (= mini TRUE) (/ diameter 2.2) (/ diameter 3.1)))

;; Select the CD shape.  Then you can cut, or whatever.
(define (CD-select img diameter mini)
    (gimp-ellipse-select img 0 0 diameter diameter CHANNEL-OP-REPLACE TRUE FALSE 0)
    (let* (
	   (inner (cd-inner-diam diameter mini))
	   (offset (/ (- diameter inner) 2))
	   )
      (gimp-ellipse-select img offset offset inner inner CHANNEL-OP-SUBTRACT TRUE FALSE 0)
      ))

;; Make a CD shape, in a solid color.
(define (script-fu-CD-label diameter color mini)
  (let* ((old-fg-color (car (gimp-context-get-foreground)))
	 (img (car (gimp-image-new diameter diameter RGB)))
	 (cdlayer (car (gimp-layer-new img diameter diameter
				       RGBA-IMAGE "CD" 100 NORMAL-MODE))))
    (gimp-image-undo-disable img)
    (gimp-image-add-layer img cdlayer -1)
    (gimp-selection-all img)
    (gimp-edit-clear cdlayer)

    (gimp-context-set-foreground color)
    (CD-select img diameter mini)
    (gimp-edit-bucket-fill cdlayer FG-BUCKET-FILL NORMAL-MODE 100 0 FALSE 0 0)

    ;; Clean up
    (gimp-selection-none img)
    (gimp-image-set-active-layer img cdlayer)
    (gimp-context-set-foreground old-fg-color)
    (gimp-image-undo-enable img)
    (gimp-display-new img)))

;; Cut out a CD shape from the current image.
(define (script-fu-CD-mask img drawable mini)
  (gimp-image-undo-group-start img)
  (CD-select img
	     (min (car (gimp-image-width img)) (car (gimp-image-height img)))
	     mini)
  (gimp-selection-invert img)
  (gimp-edit-clear drawable)
  (gimp-image-undo-group-end img)
  (gimp-displays-flush)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Registering the script-fu routines.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Loop over all our templates, to register them
(let* ((labelnames nil)
       (templates label-templates-rectangular)
       (pnames nil)
       (psizes page-sizes)
       )
  (while (pair? templates)
         (let* ((curtempl (car templates))
                (curname (car curtempl))
                (curdesc (cadr curtempl)))
           (set! curname (string-append (car (car templates))
                                        " "
                                        (car (cdr (car templates)))))
           (set! labelnames (cons curname labelnames))
           (set! templates (cdr templates))
         ))
  (while (pair? psizes)
         (set! pnames (cons (car (car psizes)) pnames))
         (set! psizes (cdr psizes))
         )
  (script-fu-register "script-fu-rect-label"
                      _"<Toolbox>/Xtns/Misc/Labels/Rect label..."
                      "Make a single rectangular template"
                      "Akkana Peck"
                      "Akkana Peck"
                      "January 2005"
                      ""
                      SF-OPTION     _"Template Name" labelnames
                      SF-ADJUSTMENT _"Width"         '(800 1 2000 10 50 0 1)
                      SF-COLOR      _"Color"         '(255 255 255)
  )

 (script-fu-register "script-fu-rect-label-page"
                     _"<Image>/Filters/Combine/Make label page..."
                     "Make a page full of rectangular templates from the current image"
                     "Akkana Peck"
                     "Akkana Peck"
                     "January 2005"
                     "RGB* GRAY* INDEXED*"
                     SF-IMAGE      "Image"          0
                     SF-DRAWABLE   "Drawable"       0
                     SF-OPTION     _"Template Name" labelnames
;                     SF-OPTION     _"Paper Size"    pnames
                     SF-ADJUSTMENT _"From"          '( 1 1 99 1 10 0 1)
                     SF-ADJUSTMENT  "To"            '(99 1 99 1 10 0 1)
		     SF-TOGGLE      "Transparent background?"  FALSE
                     SF-ADJUSTMENT  "Printer fudge factor"
                                       '(0.968 0.01 2 0.01 0.1 3 SF-SPINNER)
  )
)

(script-fu-register "script-fu-CD-label"
		    _"<Toolbox>/Xtns/Misc/Labels/CD label..."
		    "CD label shape"
		    "Akkana Peck"
		    "Akkana Peck"
		    "December 2002"
		    ""
		    SF-ADJUSTMENT _"Diameter"      '(1024 1 2000 10 50 0 1)
		    SF-COLOR      _"Color"         '(170 240 240)
		    SF-TOGGLE     _"Mini CD"       FALSE)

(script-fu-register "script-fu-CD-mask"
		    _"<Image>/Filters/Render/CD mask..."
		    "Select a CD label shape out of the current layer"
		    "Akkana Peck"
		    "Akkana Peck"
		    "December 2002"
		    "RGB* GRAY* INDEXED*"
		    SF-IMAGE      "Image"        0
		    SF-DRAWABLE   "Drawable"     0
		    SF-TOGGLE     _"Mini CD"     FALSE)

