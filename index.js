const http = require('http');
const port = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = 'Hello Yoav Container!\n version3'
  const msg1 = '$ENV'
  res.end(msg,msg1);
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
