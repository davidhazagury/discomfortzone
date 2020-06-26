import consumer from './consumer'

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    consumer.subscriptions.create({ channel: "ChatChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data.message); // called when data is broadcast in the cable
        // window.location.href = '#anchor'
        // const message = document.querySelector(`#anchor`);
        // message.scrollTo();
      },
    });
  }
}

export { initChatroomCable };
