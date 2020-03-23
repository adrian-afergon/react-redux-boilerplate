---
to: src/state/<%= reducer %>/<%= reducer %>.reducer.ts
inject: true
eof_last: false
skip_if: import { <%= h.changeCase.pascal(reducer) %>ActionTypes
prepend: true
---
import { <%= h.changeCase.pascal(reducer) %>Actions, <%= h.changeCase.pascal(reducer) %>ActionTypes } from './<%= reducer %>.actions';
