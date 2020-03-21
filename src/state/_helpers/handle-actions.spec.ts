import {handleActions, Handler} from './handle-actions';
import { combineTypes } from './combine-types';

describe('Handle action', () => {
  let statusHandler: () => any;
  const initialState: object = { property: 'irrelevant initial state'};
  const newState = 'new state';
  beforeEach(() => {
    statusHandler = jest.fn(() => newState);
  });

  it('returns an initial state', () => {
    const actionType = 'irrelevant action';
    const handler: Handler = {
      [actionType]: statusHandler,
    };
    const reducer = handleActions(handler, initialState);

    const result = reducer(initialState, { type: 'non existent action type' });
    expect(result).toEqual(initialState);
    expect(statusHandler).not.toHaveBeenCalled();
  });

  it('returns the new state', () => {
    const actionType = 'irrelevant action';
    const handler = {
      [actionType]: statusHandler,
    };

    const reducer = handleActions(handler, initialState);
    const result = reducer(initialState, { type: actionType });
    expect(result).toEqual(newState);
  });

  it('returns a new state for combined actions', () => {
    const firstActionType = 'first action type';
    const secondActionType = 'second action type';
    const handler = {
      [combineTypes(`${firstActionType}_`, `_${secondActionType}`)]: () => 'irrelevant',
      [combineTypes(firstActionType, secondActionType)]: statusHandler,
    };

    const reducer = handleActions(handler, initialState);
    const result = reducer(initialState, { type: firstActionType });
    expect(result).toEqual(newState);
  });
});
