---
to: src/state/reducer.ts
inject: true
eof_last: false
after: combineReducers\(\{
skip_if: <%= (name) %>,
---
  <%= (name) %>,
