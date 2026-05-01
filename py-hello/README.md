# py-hello

Minimal Python CLI used to demonstrate:

The package lives in a Git subdirectory, so `uvx` needs the source package via
`--from` and the executable name separately:

```bash
uvx --from "git+https://github.com/mkol5222/pub.git#subdirectory=py-hello" hello
```