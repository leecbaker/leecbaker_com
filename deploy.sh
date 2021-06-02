#!/bin/sh
set -e -u -x

aws s3 sync --profile lee ./site/ s3://leecbaker.com/
aws cloudfront create-invalidation --profile lee --distribution-id E2YAXNCE3VJ4VC --paths "/*"
