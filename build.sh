#! /usr/bin/env fish

function make_posts
  set POSTS_DIR "./p"
  set FILES (fd --type file --extension 'html' --size +200b --exact-depth 1 --base-directory "$POSTS_DIR" '.')
  printf '%s\n' "$FILES"
end

function main
  make_posts
end

main $argv
