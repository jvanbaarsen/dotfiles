let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_save=1
let g:ale_lint_delay=10
let g:ale_completion_delay=50
let g:ale_lint_on_enter=1
let g:ale_sign_column_always=1
let g:ale_sign_error="✕"
let g:ale_sign_warning="△"
let g:ale_linters={
\  'sh': ['shell'],
\  'elixir': ['credo'],
\  'sass': ['sass-lint'],
\  'javascript': ['eslint'],
\  'ruby': ['ruby', 'standardrb', 'rubocop'],
\  'erb': ['erb'],
\  'rust': ['cargo'],
\  'markdown': ['vale'],
\  'python': ['flake8']
\}
let g:ale_fixers={
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'ruby': ['rubocop'],
\ 'elixir': ['mix_format'],
\ 'javascript': ['eslint']
\}
let g:ale_ruby_rubocop_executable='bundle'
let g:ale_javascript_eslint_executable='yarn'
let g:ale_set_balloons=0
let g:ale_set_highlights = 0
let g:ale_fix_on_save = 1
