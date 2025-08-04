function git-diverge
    set -l MERGE_BASE $(git merge-base HEAD @{u})
    git log --oneline --graph $MERGE_BASE~1..@{u} $MERGE_BASE~1..HEAD
end

