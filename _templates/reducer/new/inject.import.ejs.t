---
to: src/state/reducer.ts
inject: true
eof_last: false
after: import
skip_if: import <%= (name) %>
---
import <%= name %> from './<%= name %>/<%= name %>.reducer';
