# npx-hello

Minimal Node.js CLI used to demonstrate:

```bash
npx --yes --package="git+https://github.com/mkol5222/pub.git" -- hello
```

The CLI implementation lives in this folder, but the runnable npm package is
exposed at the repository root because `npx` does not reliably execute a package
from a Git subdirectory.