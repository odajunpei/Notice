 App.question = App.cable.subscriptions.create("QuestionChannel", {
   connected: function() {
     // Called when the subscription is ready for use on the server
   },

   disconnected: function() {
     // Called when the subscription has been terminated by the server
   },

   received: function(data) {
     // Called when there's incoming data on the websocket for this channel
      const html = `<p>${data.content.text}</p>`;
      const messages = document.getElementById('messages');
      // const newMessage = document.getElementById('question_text');
      messages.insertAdjacentHTML('afterbegin', html);
      // newMessage.value='';
   }
 });

// import consumer from "./consumer"
/*
consumer.subscriptions.create("QuestionChannel", {
  received(data) {
    // 以下で使用
    const html = `<p>${data.content.text}</p>`;
    const messages = document.getElementById('questions');
    const newMessage = document.getElementById('question_text');
    messages.insertAdjacentHTML('afterbegin', html);
    newMessage.value='';
  }
});
*/