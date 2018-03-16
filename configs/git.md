## Git Config
### To set identity 
```bash
git config --global user.name "João Lourenço"
git config --global user.email "jrelourenco@outlook.pt"
```

### To set proxy

```bash
git config --global http.proxy [USERNAME]@[HOST]:[PORT]
git config --global http.sslverify false
git config --global --get http.proxy
```

### To unset proxy

```bash
git config --global --unset http.proxy
git config --global http.sslverify true 
```
