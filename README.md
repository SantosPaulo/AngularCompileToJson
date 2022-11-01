# AngularCompileToJson
Shell script to compile angular application and parse the generated compiler output

\
Make sure that the files has executable permissions:
```
$ sudo chmod +x compile.sh
```

Then run the commmand:
```
$ ./compile.sh
```
And you will get the output as json format.
```
// Ex:
{
  "version": "bdbb4d103ac0ca93",
  "build_at": "2022-11-01T09:18:54.222Z",
  "time": "6605ms"
}
```

If the command fails you might need to install "**jq**" utility:
```
$ sudo apt get jq -y
```

### Dependencies
- jq
