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
                "0ms6fjkb37kz5nk27ki457sy8lpzk9ndd83l9lms1pxj7fijidbl"))))
    (build-system binary-build-system)
    (synopsis "Oracle JDK")
    (description "The development kit for the Java prgograming language")
    (home-page "https://oracle.com")
    (license #f))) ;; Proprietary
