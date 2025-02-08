document.getElementById('loginForm').addEventListener('submit', function (e) {
    e.preventDefault();

    let username = document.getElementById('username').value;
    let password = document.getElementById('password').value;

    let credentials = {
        'Genius': 'geniuspas',
        'User': 'userpas',
    };

    if (credentials[username] && credentials[username] === password) {
        window.location.href = '1.html';
    } else {
        alert('Неверный логин или пароль. Попробуйте снова.');
    }
});


document.getElementById('openModalButton').addEventListener('click', function () {
    document.getElementById('modal').style.display = 'flex';
});

document.getElementById('closeModalButton').addEventListener('click', function () {
    document.getElementById('modal').style.display = 'none';
});

window.addEventListener('click', function (e) {
    if (e.target === document.getElementById('modal')) {
        document.getElementById('modal').style.display = 'none';
    }
});
