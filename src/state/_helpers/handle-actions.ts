import { SEPARATOR } from './combine-types';

export type Handler = any;
export type Action = {type: string};

const findCombinedType = (handler: Handler, actionType: string) => Object
  .keys(handler)
  .find((key) => key.split(SEPARATOR).find((individualActionType) => individualActionType === actionType));

export const handleActions = (handler: Handler, initialState: object) => (state = initialState, action: Action) => {
  if (handler[action.type]) {
    return handler[action.type](state, action);
  }
  const foundAction = findCombinedType(handler, action.type);
  return foundAction ? handler[foundAction](state, action) : state;
};
