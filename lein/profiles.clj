{:user {:plugins [[lein-difftest "1.3.8"]
                  [lein-tarsier "0.9.3"]]
        :dependencies {clj-stacktrace "0.2.4"}
        :injections [(let [orig (ns-resolve (doto 'clojure.stacktrace require)
                                            'print-cause-trace)
                           new (ns-resolve (doto 'clj-stacktrace.repl require)
                                           'pst)]
                       (alter-var-root orig (constantly @new)))]
        :vimclojure-opts {:repl false}}} 
