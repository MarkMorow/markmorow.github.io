#!/usr/bin/env bash
set -euo pipefail

tmp_dir="$(mktemp -d)"
tmp_override="${tmp_dir}/comments-test-override.yml"
tmp_site="${tmp_dir}/site"
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
giscus_fixture="${repo_root}/_posts/2022-01-01-ci-giscus-comments.md"
disqus_fixture="${repo_root}/_posts/2015-01-01-ci-disqus-comments.md"

cleanup() {
  rm -f "${giscus_fixture}" "${disqus_fixture}"
  rm -rf "${tmp_dir}"
}
trap cleanup EXIT

if [ -e "${giscus_fixture}" ] || [ -e "${disqus_fixture}" ]; then
  echo "comment integration fixture path already exists" >&2
  exit 1
fi

cat >"${giscus_fixture}" <<'MARKDOWN'
---
layout: post
title: ci-giscus-comments
date: 2022-01-01 00:00:00 +0000
giscus_comments: true
---

Temporary fixture used by test/integration_comments.sh.
MARKDOWN

cat >"${disqus_fixture}" <<'MARKDOWN'
---
layout: post
title: ci-disqus-comments
date: 2015-01-01 00:00:00 +0000
disqus_comments: true
---

Temporary fixture used by test/integration_comments.sh.
MARKDOWN

cat >"${tmp_override}" <<'YAML'
giscus:
  repo: alshedivat/al-folio
  repo_id: R_kgDOExample
  category: Comments
  category_id: DIC_kwDOExample
external_sources: []
YAML

bundle exec jekyll build --config "_config.yml,${tmp_override}" -d "${tmp_site}" >/dev/null

giscus_page="${tmp_site}/blog/2022/ci-giscus-comments/index.html"
disqus_page="${tmp_site}/blog/2015/ci-disqus-comments/index.html"

grep -q 'https://giscus.app/client.js' "${giscus_page}"
if grep -q 'giscus comments misconfigured' "${giscus_page}"; then
  echo "unexpected giscus misconfiguration warning in ${giscus_page}" >&2
  exit 1
fi

grep -q 'id="disqus_thread"' "${disqus_page}"
grep -q '.disqus.com/embed.js' "${disqus_page}"

echo "comments integration checks passed"
