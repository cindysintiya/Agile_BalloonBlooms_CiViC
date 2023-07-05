const chatForm = document.getElementById('chat-form');
const chatMessages = document.querySelector('.chat-messages');
const roomName = document.getElementById('room-name');
const userList = document.getElementById('users');
const authStatus = document.getElementById('status');

// Get username and room from URL
const locationPath = window.location.pathname.split('/')
const username = locationPath[locationPath.length-2]
const room = locationPath[locationPath.length-1].replace("+", " with ")

const socket = io();

// Get connection status
socket.on('status', (stat) => {
    if (stat) {
        console.log("connected");
    }
});

// Join chatroom
socket.emit('joinRoom', { username, room })

// Get room and users
socket.on('roomUsers', ({ room, users }) => {
    outputRoomName(room);
    outputUsers(users);
});
    
// Message from server
socket.on('message', message => {
    outputMessage(message);
    // Scroll down
    chatMessages.scrollTop = chatMessages.scrollHeight;
});

// Message join/ leave
socket.on('joinleave', message => {
    outputJoinLeave(message);
    // Scroll down
    chatMessages.scrollTop = chatMessages.scrollHeight;
});

// Message submit
chatForm.addEventListener('submit', e => {
    e.preventDefault()
    // Get message text
    const msg = e.target.elements.msg.value;
    // Emit message to server
    socket.emit('chatMessage', msg);
    // Clear input
    e.target.elements.msg.value = '';
    e.target.elements.msg.focus();
});

// Output message to DOM
function outputMessage(message) {
    const div = document.createElement('div');
    div.classList.add('message');
    div.innerHTML = `
    <p class="meta">${message.username}
        <span class="ml-2">${message.time}</span></p>
    <p class="text is-size-5">
        ${message.text}
    </p>`;
    if (message.username.toLocaleLowerCase() == 'admin') {
        div.classList.add('has-background-primary')
    }
    document.querySelector('.chat-messages').appendChild(div);
}

// Output join/ leave to DOM
function outputJoinLeave(message) {
    const div = document.createElement('div');
    div.classList.add('notif');
    div.innerHTML = `<p class="is-size-6">${message.text}</p>`;
    document.querySelector('.chat-messages').appendChild(div);
}

// Add room name to DOM
function outputRoomName(room) {
    roomName.innerHTML = room;
    roomName.title = 'Current in room ' + room;
}

// Add users to DOM
function outputUsers(users) {
    let temp = ""
    if (username.toLocaleLowerCase() == "admin") {
        users.forEach((user) => {
            if (user.username != username) {
                temp += `<li><i class="fas fa-user mr-2 is-size-5"></i><a href='/live-chat/${username}/ADMIN+${user.username}' target="_blank" class="text-decoration-none">${user.username}</a></li>`
            }
        });
    }
    else {
        users.forEach((user) => {
            if (user.username != username) {
                temp += `<li><i class="fa fa-user mr-2 is-size-5"></i>${user.username}</li>`
            }
        });
    }
    userList.innerHTML = `<li><i class="fas fa-child-reaching mr-2 is-size-5"></i>${username} <small>(you)</small></li>` + temp
}