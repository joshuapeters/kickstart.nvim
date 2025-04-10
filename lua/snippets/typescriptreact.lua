local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Console log snippet
  s('cl', {
    t 'console.log(',
    i(1, ''),
    t ');',
  }),

  -- React function component snippet
  s('rfc', {
    t "import { h, type JSX } from 'preact';",
    t { '', '' },
    t { '', '' },
    t 'type ComponentProps = {',
    t { '', '' },
    t '}',
    t { '', '' },
    t { '', '' },
    t 'export const ',
    i(1, 'ComponentName'),
    t ' = (): JSX.Element => {',
    t { '', '  return (' },
    t { '', '    <div>' },
    i(2, 'i am a new component!'),
    t { '', '    </div>' },
    t { '', '  );' },
    t { '', '};' },
    t { '', '' },
  }),
}
