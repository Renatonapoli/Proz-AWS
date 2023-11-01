// Capturar os elementos do HTML
const tituloElement = document.getElementById("titulo");
const listaNaoOrdenada = document.querySelector("ul");
const linkElement = document.querySelector("a");
const listaOrdenada = document.getElementById("lista-ordenada");

// Adicionar conteúdo textual ao elemento h1 e ao link
tituloElement.innerText = "Título da Página";
linkElement.innerText = "Proz Educação";

// Adicionar itens à lista não ordenada usando innerHTML
listaNaoOrdenada.innerHTML = `
    <li>Item 1</li>
    <li>Item 2</li>
    <li>Item 3</li>
`;

// Adicionar itens à lista ordenada com links usando innerHTML
listaOrdenada.innerHTML = `
    <li><a href="https://www.site1.com">Link para Site 1</a></li>
    <li><a href="https://www.site2.com">Link para Site 2</a></li>
    <li><a href="https://www.site3.com">Link para Site 3</a></li>
`;