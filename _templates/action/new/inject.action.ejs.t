---
to: src/state/<%= reducer %>/<%= reducer %>.actions.ts
inject: true
eof_last: false
after: export const <%= h.changeCase.sentence(reducer) %>ActionTypes = {
---
  <%= h.changeCase.upper(h.changeCase.snake(name)) %>: 'app-hoges-web/<%= reducer %>/<%= h.changeCase.upper(h.changeCase.snake(name)) %>',
