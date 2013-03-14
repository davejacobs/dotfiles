{:user {:plugins [[lein-midje "2.0.4"]
                  [lein-tarsier "0.10.0"]
                  [lein-immutant "0.14.1"]
                  [lein-iclojure "1.1"]]
        :dependencies {clj-stacktrace "0.2.4"}
        :injections [(let [orig (ns-resolve (doto 'clojure.stacktrace require)
                                            'print-cause-trace)
                           new (ns-resolve (doto 'clj-stacktrace.repl require)
                                           'pst)]
                       (alter-var-root orig (constantly @new)))]
        :vimclojure-opts {:repl false}}} 
