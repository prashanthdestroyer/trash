#!/bin/sh

source settings.sh
# $1 = Mt_CddExample
# $2 = Unit / Integration
# $3 = CUnit
# $4 = CTC / GCOV

echo
echo +++ Running test: $1 Start +++

for i in '$GIT rev-parse HEAD'; do  GIT_COMMIT_HASH_VALUE=$i; done

cd ..\..\Build\VS
.\build.sh $PAR_ECU_UT PC_WIN32API WIN_GCC $3 $4 X64 $PAR_PRJ Test $1 NonKey rebuild
cd ..\..\CI\Support
