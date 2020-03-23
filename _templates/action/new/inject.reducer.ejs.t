---
to: src/state/<%= reducer %>/<%= reducer %>.reducer.ts
inject: true
eof_last: false
after: handleActions\(
---
  [<%= h.changeCase.sentence(reducer) %>ActionTypes.<%= h.changeCase.upper(h.changeCase.snake(name)) %>]: (state: <%= h.changeCase.pascal(reducer) %>State <% if(locals.payload){ -%>, { <%= payload %> }: <%= h.changeCase.pascal(reducer) %>Actions <% } -%>): <%= h.changeCase.pascal(reducer) %>State => ({ ...state<% if(locals.payload){ -%> , <%= payload %> <% } -%> }),
