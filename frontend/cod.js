const btn_entrar = document.getElementById('btn_entrar')

btn_entrar.addEventListener('click', async () => {
    const email = document.getElementById('input_email').value
    const senha = document.getElementById('input_senha').value

    const resposta = await fetch("http://localhost:3000/login", {
        method: "POST",
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            "email": email,
            "senha": senha
        })
    }) // Jogou no BackEnd

    if (resposta.ok == true) {
        const dados = await resposta.json()
        alert(dados.resposta)

    } else {
        const dados = await resposta.json()
        alert(dados.resposta)
    }

})