const httpServer = require("http").createServer();
const io = require("socket.io")(httpServer);

io.on("connection", socket => {
  console.log(`connect ${socket.id}`);

  setInterval(() => {
    socket.emit("ping", () => {
      console.log("got pong");
    });
  }, 2000);

  socket.on("disconnect", (reason) => {
    console.log(`disconnect ${socket.id} due to ${reason}`);
  });
});

httpServer.listen(8080);
