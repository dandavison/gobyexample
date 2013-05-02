(defprotocol Geometry
  "A basic protocol for geometric shapes"
  (area [shape] "Compute area")
  (perim [shape] "Compute perimeter"))

(defrecord Square [width height]
    Geometry
  (area [this] (* width height))
  (perim [this] (* 2 (+ width height))))

(defrecord Circle [radius]
    Geometry
  (area [this] (* Math/PI radius radius))
  (perim [this] (* Math/PI 2 radius)))

;; TODO: Is there some way to declare that this function "expects"
;; something implementing the Geometry protocol?
(defn measure [geometry]
  (println geometry)
  (println (area geometry))
  (println (perim geometry)))

(defn -main [&args]
  (let [s (Square. 3 4)
        c (Circle. 5)]
    (measure s)
    (measure c)))
