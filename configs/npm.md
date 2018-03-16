## NPM Config
### To set proxy
Username and password must be escaped %[ASCI_HEX_CODE]
```bash
npm config set proxy "http://[DOMAIN]%5C[USERNAME]:[PASSWORD]@[HOST]:[PORT]/"
npm config set strict-ssl false
```

### To unset proxy

```bash
npm config rm proxy
```