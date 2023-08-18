(define-module (quatsch packages oracle-jdk)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (nonguix build-system binary))

(define-public oracle-jdk
  (package
    (name "oracle-jdk")
    (version "17")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz"))
              (sha256
               (base32
                "8919e8752979db73d8321e9babe2caedcc393750817c1a5f56c128ec442fb540"))))
    (build-system binary-build-system)
    (synopsis "Oracle JDK")
    (description "The development kit for the Java prgograming language")
    (home-page "https://oracle.com")
    (license #f))) ;; Proprietary
