---
to: src/state/<%= reducer %>/<%= reducer %>.reducer.spec.ts
inject: true
eof_last: false
after: import
skip_if: import \* as <%= h.changeCase.sentence(reducer) %>Actions
---
import * as <%= h.changeCase.sentence(reducer) %>Actions from './<%= reducer %>.actions';
