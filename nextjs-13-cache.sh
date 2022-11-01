#!/bin/sh
git clone --depth 1 --filter=blob:none --sparse --progress https://github.com/supabase/supabase.git .tmp-space
cd .tmp-space
git sparse-checkout set examples/caching/with-nextjs-13
mv examples/caching/with-nextjs-13 ..
cd ..
rm -rf .tmp-space
