#!/bin/sh
set -e -u -x

zola build --base-url https://leecbaker.com --output-dir public_prod --force

aws s3 sync --profile lee public_prod s3://leecbaker.com/
aws cloudfront create-invalidation --profile lee --distribution-id E2YAXNCE3VJ4VC --paths "/*"
