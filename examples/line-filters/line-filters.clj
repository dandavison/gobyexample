(defn -main
  [& args]
  (doseq [line (line-seq (java.io.BufferedReader. *in*))]
    (println (.toUpperCase line))))
