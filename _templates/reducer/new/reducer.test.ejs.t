---
to: src/state/<%= name %>/<%= name %>.reducer.spec.ts
---
import reducer, { <%= h.changeCase.sentence(name) %>State } from './<%= name %>.reducer';

describe('<%= h.changeCase.sentence(name) %> Reducer', () => {

  const createState = ({

  }: Partial<<%= h.changeCase.sentence(name) %>State> = {}) => ({

  });

  it('doesn\'t change the state when action not exists', () => {
    const initialState: <%= h.changeCase.sentence(name) %>State = createState();
    const updatedState: <%= h.changeCase.sentence(name) %>State = reducer(initialState, { type: 'non existent action type' });

    expect(updatedState).toEqual(initialState);
  });
});
