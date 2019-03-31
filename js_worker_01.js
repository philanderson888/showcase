onmessage=function(e){
  console.log('Message logged in the web worker');
  console.log(e);
  console.log(e.data);
  console.log(e.data.field1);
  console.log(JSON.stringify(e.data));
  postMessage('Message sent from web worker to the host process');
  postMessage({"returnfield":"worker message data"});
  self.close();
};