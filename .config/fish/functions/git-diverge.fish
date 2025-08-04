function git-diverge
    set -l MERGE_BASE $(git merge-base HEAD origin)
    git log --oneline --graph $MERGE_BASE~1..origin $MERGE_BASE~1..HEAD
end

