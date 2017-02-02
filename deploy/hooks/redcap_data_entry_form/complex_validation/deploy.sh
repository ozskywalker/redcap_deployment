#!/bin/bash
set -e

export MYTARGETDIR=$1

# determine the directory where this script resides
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# get source files
TEMPDIR=`mktemp -d`
git clone https://github.com/ctsit/redcap-data-entry-form_complex-validation-hook.git $TEMPDIR

# copy files to the correct target locations
mkdir -p $MYTARGETDIR
cp $TEMPDIR/complex_validation.php $MYTARGETDIR

rm -rf $TEMPDIR
