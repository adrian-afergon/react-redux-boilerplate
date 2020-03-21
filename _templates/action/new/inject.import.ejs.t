---
to: src/state/<%= reducer %>/<%= reducer %>.reducer.ts
inject: true
eof_last: false
skip_if: import { <%= h.changeCase.sentence(reducer) %>ActionTypes
prepend: true
---
import { <%= h.changeCase.sentence(reducer) %>ActionTypes } from './<%= reducer %>.actions';
