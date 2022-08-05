#!/bin/sh

set -eu

DOTFILES_DIR=$(cd $(dirname $0); pwd)
cd $DOTFILES_DIR

# .から始まるファイル・フォルダをループ
for f in .??*; do
	# 除外ファイル
	[[ "$f" == ".git" ]] && continue
	[[ "$f" == ".gitconfig" ]] && continue
	[[ "$f" == ".gitignore" ]] && continue
	[[ "$f" == ".DS_Store" ]] && continue
	[[ "$f" =~ .swp$ ]] && continue

	# シンボリックリンクを作成
	ln -snfv ${DOTFILES_DIR}/$f ~
done
