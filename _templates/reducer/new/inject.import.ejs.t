---
to: src/state/reducer.ts
inject: true
eof_last: false
before: export
skip_if: import <%= (name) %>
---
import <%= name %> from './<%= name %>/<%= name %>.reducer';
