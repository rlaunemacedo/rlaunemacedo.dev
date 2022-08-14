#!/bin/bash
echo "Atualizando o site rlaunemacedo.github.io.git"
git add .
git commit -m "Atualização $(date +%F\ %T)"
git push
