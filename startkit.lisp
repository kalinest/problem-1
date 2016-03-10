

(defun read-data (filename)
  (with-open-file (in filename)
    (let ((res))
      (do ((line (read-line in nil nil)
		 (read-line in nil nil)))
	  ((null line)
	   (reverse res))
	(push (parse-integer line) res)))))

(defun count-inversions (alist)
  ...)


(count-inversions (read-data "IntegerArray.txt"))

(let ((lista (read-data "IntegerArray.txt")))
  (count-inversions lista))

(defvar lista (read-data "IntegerArray.txt"))
(count-inversions lista)
