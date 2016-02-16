#!/bin/bash

rm -rf livro || exit 0;
gitbook build . livro;
git add .
git commit -m "Atualizando gh-pages via travis-ci"
# DEPLOY_REPO
git push --force --quiet "https://$GH_TOKEN@$github.com/teles/cancoes-de-amor-a-voce.git" master:gh-pages > /dev/null 2>&1