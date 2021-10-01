#!/bin/sh -x

[ -d "${GITHUB_WORKSPACE}" ] && PROJECT_DIR="${GITHUB_WORKSPACE}"
[ "${PROJECT_DIR}" != "${PWD}" ] && cd "${PROJECT_DIR}"

mkdir artifacts
mv ProjectTEP/.minecraft artifacts/overrides
mv ProjectTEP/manifest.json artifacts
mv ProjectTEP/modlist.html artifacts
