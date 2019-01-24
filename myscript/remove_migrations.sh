#!/usr/bin/env bash

cd base/migrations/
rm *
git ls-files -d | xargs git checkout --
cd ../..