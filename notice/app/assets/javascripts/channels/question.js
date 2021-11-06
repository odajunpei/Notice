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
      const html = `<div class="conteiner-fluid">
                        <div class="row">
                            <div class="col-xs-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2">
                                <div class~"card w-60 text-center">
                                    <h1 class="text-center">
                                        <strong>${data.content.nickname}様から質問</strong>
                                    </h1>
                                    <div class="card-image-top text-center">
                                        <img class="attachment ${data.content.profile_image} fallback" src="/assets/men-40b9bb0….png" width="150" height="150">
                                    </div>
                                    <h1 class="text-center">${data.content.body}</h1>
                                    <h1 class="text-center">${data.content.created_at}</h1>
                                    <h1 class="text-center text-danger">
                                        質問を確認する.
                                    </h1>
                                </div>
                            </div>
                        </div>
                    </div>`;
      const messages = document.getElementById('messages');
      messages.insertAdjacentHTML('afterbegin', html);
   }
 });