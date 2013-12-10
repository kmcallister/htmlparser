#!/bin/sh -e

javac -classpath ~/downloads/javaparser-1.0.8.jar:. nu/validator/htmlparser/rusttranslate/Main.java
java -classpath ~/downloads/javaparser-1.0.8.jar:. nu.validator.htmlparser.rusttranslate.Main ../src/nu/validator/htmlparser/impl rust-output/
/home/keegan/proj/servo/servo/build.debug/x86_64-unknown-linux-gnu/src/compiler/rust/x86_64-unknown-linux-gnu/stage2/bin/rustc --lib rust-output/lib.rs
