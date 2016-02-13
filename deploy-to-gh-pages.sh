#!/bin/bash

rm -rf livro || exit 0;
gitbook build . livro;
git add .
git commmit -m "Atualizando gh-pages via travis-ci"
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1