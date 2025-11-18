const express = require('express')
const server = express()
const cors = require('cors')
const mysql = require('mysql2/promise')
const porta = 3000
const conexao = require('./db')
const crypto = require('crypto')

server.use(express.json())
server.use(cors())

server.listen(porta, () => {
    console.log(`Servidor rodando em: http://localhost:${porta}`)
})


//apenas para cadastrar com hash no banco
server.post('/cadastro', async (req, res) => {
    try {
        const { nome_user, email } = req.body
        let { senha } = req.body

        //tratando as informações
        senha = senha.trim()
        if (senha == '') {
            return res.json({ "resposta": 'Preencha uma senha válida' })
        } else if (senha.length < 6) {
            return res.json({ "resposta": 'Preencha uma senha com no mínimo 6 caracteres' })
        } else if (email < 6) {
            return res.json({ "resposta": 'Preencha um email' })
        } else if (nome_user < 4) {
            return res.json({ "resposta": 'Preencha um nome' })
        } else if (!email.includes('@')) {
            return res.json({ "resposta": 'Preencha um email válido' })
        }

        //verificar se o email já existe
        let sql = `select * from usuarios where email = ?`
        let [resultado] = await conexao.query(sql, [email])
        if (resultado.length != 0) {
            return res.json({ "resposta": "Email já cadastrado" }) //se isso acontecer eu paro de executar meu código
        }

        //criando a Hash da senha
        const hash = crypto.createHash('sha256').update(senha).digest('hex')

        sql = `insert into usuarios(nome_user, email, senha) values (?,?,?)`
        const [resultado2] = await conexao.query(sql, [nome_user, email, hash])

        if (resultado2.affectedRows == 1) {
            return res.json({ "resposta": "Cadastro efetuado com sucesso!!" })
        } else {
            return res.json({ "resposta": "Erro ao tentar cadastrar" })
        }
    } catch (error) {
        console.log(error)
    }
})

server.post('/login', async (req, res) => {
    try {
        const { email } = req.body
        let { senha } = req.body

        senha = senha.trim()
        if (senha == '') {
            return res.json({ "resposta": "Preencha uma senha Válida" })
        } else if (senha.length < 6) {
            return res.json({ "resposta": "Preencha uma senha com no mínimo 6 carcteres" })
        }

        const hash = crypto.createHash('sha256').update(senha).digest('hex')
        const sql = `SELECT * FROM usuarios WHERE email = ? AND senha = ?`
        const [resultado] = await conexao.query(sql, [email, hash])

        if (resultado.length == 1.) {
            res.json({ "resposta": "Você está Conectado" })
        } else {
            res.json({ "resposta": 'Usuário ou Senha inválida' })
        }

    } catch (error) {
        console.log(error)
    }
})