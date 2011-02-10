# These are generators for different completion files for several languages
# Copy these into the appropriate REPL to generate your files.

Clojure
=======

(def completions
    (reduce concat (map (fn [p] (keys (ns-publics (find-ns p))))
                        '(clojure.core clojure.set clojure.xml clojure.zip))))

(with-open [f (java.io.BufferedWriter. (java.io.FileWriter. (str (System/getenv "HOME") "/.clj_completions")))]
    (.write f (apply str (interleave completions (repeat "\n")))))
