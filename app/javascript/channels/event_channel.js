import consumer from './consumer'

const htmlToElem = (html) => {
  const temp = document.createElement('template');
  html = html.trim();
  temp.innerHTML = html;
  return temp.content.firstChild;
}


const scrollToBottom = (element) => {
  element.scrollTop = element.scrollHeight;
}

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    const currentUserId = document.querySelector('meta[name="current"]').content
    consumer.subscriptions.create({ channel: "ChatChannel", id: id }, {
      received(data) {
        const message = htmlToElem(data.message)
        const senderId = message.dataset.senderId

        if (currentUserId === senderId) {
          message.classList.add("current-user")
        } else {
          message.classList.remove("current-user")
        }
        messagesContainer.appendChild(message); // called when data is broadcast in the cable
        scrollToBottom(messagesContainer);
        // window.location.href = '#anchor'
        // const message = document.querySelector(`#anchor`);
        // message.scrollTo();
      },
    });
  }
}

export { initChatroomCable };
