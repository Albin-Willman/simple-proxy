== README

A small simple proxy service to make javascript requests via culr to avoid Access-Control-Allow-Origin

=== Usage

Make requests like this:

```
  proxy-server-url.com/?url=example.com?param1=tmp
```

and the response will be

```
{
  status: status,
  data: data
}
```