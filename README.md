```bash
# demonstrate execution of a Python CLI using uvx
uvx --from "git+https://github.com/mkol5222/pub.git#subdirectory=py-hello" hello
```

`uvx github:mkol5222/pub/py-hello hello` does not work because `uvx` treats the
first positional argument as the executable name. For a tool defined in a Git
subdirectory, pass the package source via `--from`.