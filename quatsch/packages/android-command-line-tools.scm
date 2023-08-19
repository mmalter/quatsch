(define-module (quatsch packages android-command-line-tools)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (nonguix build-system binary)
  #:use-module (gnu packages compression))

(define-public android-command-line-tools
  (package
    (name "android-command-line-tools")
    (version "34.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "https://dl.google.com/android/repository/commandlinetools-linux-10406996_latest.zip"))
              (sha256
               (base32
                "8919e8752979db73d8321e9babe2caedcc393750817c1a5f56c128ec442fb540"))))
    (build-system binary-build-system)
    (arguments (#:validate-runpath? #f))
    (native-inputs (list (specification->package "unzip")))
    (synopsis "Command line tools for Android development.")
    (description "Various command line tools.")
    (home-page "https://developer.android.com")
    (license #f))) ;; Proprietary
