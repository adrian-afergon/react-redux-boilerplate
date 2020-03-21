---
to: src/state/<%= reducer %>/<%= reducer %>.actions.ts
inject: true
eof_last: false
after: export type <%= h.changeCase.sentence(reducer) %>Actions
---
  | <%= h.changeCase.pascal(name) %>Action
