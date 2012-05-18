Completions
===========

Copy these into the appropriate REPL to generate files for bash and other completion.

Clojure
-------

(def completions
    (reduce concat
     (map #(keys (ns-publics (find-ns %)))
          '(clojure.core clojure.set clojure.xml clojure.zip))))

(let [home (System/getenv "HOME")
      completions-file (str home "/.clj_completions")
      writer (java.io.BufferedWriter. (java.io.FileWriter. completions-file))
      dictionary (apply str (interleave completions (repeat "\n")))]
  (with-open [f writer]
    (.write f dictionary)))
