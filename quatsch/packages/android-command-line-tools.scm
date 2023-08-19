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
                "0h5m5x2fqa61argilz41a0vkkk7drbiap6qy6bc77nvr55syh6c9"))))
    (build-system binary-build-system)
    (arguments `(#:validate-runpath? #f))
    (native-inputs (list unzip))
    (synopsis "Command line tools for Android development.")
    (description "Various command line tools.")
    (home-page "https://developer.android.com")
    (license #f))) ;; Proprietary
