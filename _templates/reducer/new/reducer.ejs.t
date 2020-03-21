---
to: src/state/<%= name %>/<%= name %>.reducer.ts
---
import { handleActions } from '../_helpers/handle-actions';

export interface <%= h.changeCase.sentence(name) %>State {

}

export const initial<%= h.changeCase.sentence(name) %>State: <%= h.changeCase.sentence(name) %>State = {

};

export default handleActions({
}, initial<%= h.changeCase.sentence(name) %>State);
