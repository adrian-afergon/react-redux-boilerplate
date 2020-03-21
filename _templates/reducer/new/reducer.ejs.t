---
to: src/state/<%= name %>/<%= name %>.reducer.ts
---
import { handleActions } from '../_helpers/handle-actions';

export const initial<%= h.changeCase.sentence(name) %>State = {

};

export default handleActions({
}, initial<%= h.changeCase.sentence(name) %>State);
