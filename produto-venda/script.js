// Método simples para adicionar o título
const tituloElement = document.getElementById('titulo');
tituloElement.textContent = 'Produtos em Destaque';

// Método complexo para adicionar um produto
const produtoElement = document.getElementById('produto');
const nomeProduto = 'Camiseta Legal';
const descricaoProduto = 'Uma camiseta confortável e estilosa.';
const precoProduto = 19.99;

const produtoDiv = document.createElement('div');
produtoDiv.classList.add('produto');

const nomeDiv = document.createElement('div');
nomeDiv.textContent = `Nome: ${nomeProduto}`;

const descricaoDiv = document.createElement('div');
descricaoDiv.textContent = `Descrição: ${descricaoProduto}`;

const precoDiv = document.createElement('div');
precoDiv.textContent = `Preço: $${precoProduto.toFixed(2)}`;

produtoDiv.appendChild(nomeDiv);
produtoDiv.appendChild(descricaoDiv);
produtoDiv.appendChild(precoDiv);

produtoElement.appendChild(produtoDiv);