---
to: src/state/<%= reducer %>/<%= reducer %>.actions.ts
inject: true
append: true
---
export const <%= h.changeCase.camel(name) %>Action = (
<% if(locals.payload){ -%>
  <%= payload %>
<% } -%>
) => ({
  type: <%= h.changeCase.sentence(reducer) %>ActionTypes.<%= h.changeCase.upper(h.changeCase.snake(name)) %>,
<% if(locals.payload){ -%>
  <%= payload %>,
<% } -%>
});
