---
to: src/state/<%= reducer %>/<%= reducer %>.reducer.ts
inject: true
eof_last: false
after: handleActions\(
---
  [<%= h.changeCase.sentence(reducer) %>ActionTypes.<%= h.changeCase.upper(h.changeCase.snake(name)) %>]: (state <% if(locals.payload){ -%> , { <%= payload %> } <% } -%>) => ({ ...state<% if(locals.payload){ -%> , <%= payload %> <% } -%> }),
