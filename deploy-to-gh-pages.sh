#!/bin/bash

rm -rf livro || exit 0;
gitbook build . livro;
git add .
git commit -m "Atualizando gh-pages via travis-ci"