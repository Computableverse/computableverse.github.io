slug=$1
title=$2

echo "\n- slug: $slug" >> _data/categories.yml
echo "  name: $slug" >> _data/categories.yml

echo "---\nlayout: category_layout\ntitle: \"$title\"\ncategory: $slug\npermalink: /$slug/\n---" > blog/category/${slug}.md
