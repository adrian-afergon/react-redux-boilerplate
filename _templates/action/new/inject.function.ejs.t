---
to: src/state/<%= reducer %>/<%= reducer %>.actions.ts
inject: true
before: export type <%= h.changeCase.sentence(reducer) %>Actions
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
}) as const;
export type <%= h.changeCase.pascal(name) %>Action = ReturnType<typeof <%= h.changeCase.camel(name) %>Action>;
