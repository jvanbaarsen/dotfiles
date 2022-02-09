" Applies to all "projects" that are opened.
let g:projectionist_heuristics = {
  \   "Gemfile": {
  \     "lib/*.rb": {
  \       "type": "source",
  \       "alternate": "spec/lib/{dirname}/{basename}_spec.rb"
  \     },
  \     "spec/*_spec.rb": {
  \       "type": "test",
  \       "alternate": "{dirname}/{basename}.rb"
  \     }
  \   },
  \   "app/frontend/javascripts/": {
  \     "app/frontend/javascripts/*.js": {
  \       "type": "source",
  \       "alternate": "app/frontend/javascripts/{dirname}/{basename}.test.js"
  \     },
  \     "app/frontend/javascripts/*.test.js": {
  \       "type": "test",
  \       "alternate": "app/frontend/javascripts/{dirname}/{basename}.js"
  \     },
  \     "app/frontend/javascripts/*.jsx": {
  \       "type": "source",
  \       "alternate": "app/frontend/javascripts/{dirname}/{basename}.test.jsx"
  \     },
  \     "app/frontend/javascripts/*.test.jsx": {
  \       "type": "test",
  \       "alternate": "app/frontend/javascripts/{dirname}/{basename}.jsx"
  \     }
  \   },
  \   "next.config.js": {
  \     "*.js": {
  \       "type": "source",
  \       "alternate": "{dirname}/{basename}.test.js"
  \     },
  \     "*.test.js": {
  \       "type": "test",
  \       "alternate": "{dirname}/{basename}.js"
  \     }
  \   }
  \ }
