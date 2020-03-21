---
to: src/state/<%= reducer %>/<%= reducer %>.reducer.spec.ts
inject: true
eof_last: false
before: it
---
<% if(locals.payload){ -%>
  it('changes the state when <%= h.changeCase.lower(h.changeCase.sentence(name)) %>', () => {
    const initialState = createState();
    const <%= payload %> = 'irrelevant payload value';
    const updatedState = reducer(initialState, <%= h.changeCase.sentence(reducer) %>Actions.<%= h.changeCase.camel(name) %>Action(<%= payload %>));

    expect(updatedState).toEqual({...initialState, <%= payload %>});
  });
<% } -%>
