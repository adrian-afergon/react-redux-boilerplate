---
to: src/state/<%= name %>/<%= name %>.reducer.spec.ts
---
import reducer from './<%= name %>.reducer';

describe('<%= h.changeCase.sentence(name) %> Reducer', () => {

  const createState = ({

  } = {}) => ({

  });

  it('doesn\'t change the state when action not exists', () => {
    const initialState = createState();
    const updatedState = reducer(initialState, { type: 'non existent action type' });

    expect(updatedState).toEqual(initialState);
  });
});
