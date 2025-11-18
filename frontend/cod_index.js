//Criar um evento para quando clicar no botão
const btn_cad = document.getElementById('btn_cadastrar')

btn_cad.addEventListener('click', async () => {
    //Primeira Etapa: Pegar informações dos inputs
    const nome = document.getElementById('input_nome').value
    const email = document.getElementById('input_email').value
    const senha = document.getElementById('input_senha').value

    //Segunda Etapa: Fazer a requisição para o back-end
    const resposta = await fetch(`http://localhost:3000/cadastro`, {
        method: "POST",
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            "nome_user": nome,
            "email": email,
            "senha": senha
        })
    })

    //Terceira Etapa: Pegar a resposta do back-end
    if (resposta.ok == true) {
        const dados = await resposta.json()
        document.getElementById('resultado').innerText = dados.resposta
    } else {
        const dados = await resposta.json()
        document.getElementById('resultado').innerText = dados.resposta
    }

})

