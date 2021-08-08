#!/bin/sh -e

# https://github.com/flot/flot/pull/1110
git checkout absolute-zoom-range
git rebase upstream/0.9-work

# https://github.com/flot/flot/pull/1106
git checkout zoom-edge-behavior
git rebase upstream/0.9-work

# https://github.com/flot/flot/pull/1108
git checkout border-grid-lock
git rebase upstream/0.9-work

# https://github.com/flot/flot/pull/1109
git checkout selection-cancel-with-esc-key
git rebase upstream/0.9-work

#
git checkout option-skip-redraw-on-zoom
git rebase upstream/0.9-work

#
git checkout better-gap-handling-in-stack
git rebase upstream/0.9-work

#
git checkout add-option-to-require-ctrl-key-for-scrolling
git rebase upstream/0.9-work

# https://github.com/flot/flot/pull/1403
git checkout prevent-text-selection-when-dragging
git rebase upstream/0.9-work

git checkout 0.9-work+patch
git reset --hard upstream/0.9-work
git cherry-pick upstream/0.9-work..absolute-zoom-range
git cherry-pick upstream/0.9-work..zoom-edge-behavior
git cherry-pick upstream/0.9-work..border-grid-lock
git cherry-pick upstream/0.9-work..selection-cancel-with-esc-key
git cherry-pick upstream/0.9-work..option-skip-redraw-on-zoom
git cherry-pick upstream/0.9-work..better-gap-handling-in-stack
git cherry-pick upstream/0.9-work..add-option-to-require-ctrl-key-for-scrolling
git cherry-pick upstream/0.9-work..prevent-text-selection-when-dragging
