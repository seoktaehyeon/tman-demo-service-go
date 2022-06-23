# Service (Go) Demo

## 如何编译构建

```bash
docker build -t tman-demo-service-go:latest .
```

## 如何运行服务

```bash
docker run -d -p 8080:80 -it tman-demo-service-go:latest
```

## 如何访问服务

```bash
curl http://127.0.0.1:8080/api/status
```

返回结果为 `{"Status":"Healthy"}`
