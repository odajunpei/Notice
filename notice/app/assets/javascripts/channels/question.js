 App.question = App.cable.subscriptions.create("QuestionChannel", {
   connected: function() {
     // Called when the subscription is ready for use on the server
   },

   disconnected: function() {
     // Called when the subscription has been terminated by the server
   },

   received: function(data) {
     // Called when there's incoming data on the websocket for this channel
     console.log(data);
      const html = `<p>${data.content.body}</p>
                    <p>${data.content.nickname}</p>;
                    // <p>${data.content.profile_image}</p>
                    // <p>${data.content.created_at}</p>
                    // <p>${data.content.choices1}</p>
                    // <p>${data.content.choices2}</p>
                    // <p>${data.content.choices3}</p>`;
      const messages = document.getElementById('messages');
    //   const newMessage = document.getElementById('message_text');
      messages.insertAdjacentHTML('afterbegin', html);
    //   newMessage.value='';
   }
 });