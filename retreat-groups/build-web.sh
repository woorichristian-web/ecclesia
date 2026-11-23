#!/bin/sh
# index.html(Artifact용) → web/index.html(Vercel 등 일반 웹 호스팅용)
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="ko">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n</head>\n<body>\n'; cat index.html; printf '\n</body>\n</html>\n'; } > web/index.html
